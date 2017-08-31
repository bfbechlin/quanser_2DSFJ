#include <Q2DSFJ.h>

#include <ioutils.h>
#include <LS7366R.h>

#include <stdlib.h>

#include <stdio.h>

int Q2DSFJ_initialize(Q2DSFJ_T* this){
	int ls7366R_mode0;
	int ls7366R_mode1;

	/* IO3 */
	if(!fd_open(&this->mot_pwm, "/sys/class/pwm/pwmchip0/pwm1/duty_cycle", FD_WRITE))
		return FALSE;

	/* IO4 */
	if(!fd_open(&this->mot_en, "/sys/class/gpio/gpio6/value", FD_WRITE))
		return FALSE;

	/* ENABLE */
	if(!fd_open(&this->pwm_en, "/sys/class/pwm/pwmchip0/pwm1/enable", FD_WRITE))
		return FALSE;

	/* IO5 */
	if(!fd_open(&this->lim_sw[0], "/sys/class/gpio/gpio0/value", FD_READ))
		return FALSE;

	/* IO6 */
	if(!fd_open(&this->lim_sw[1], "/sys/class/gpio/gpio1/value", FD_READ))
		return FALSE;

	/* IO7 */
	if(!fd_open(&this->enc_en[0], "/sys/class/gpio/gpio38/value", FD_WRITE))
		return FALSE;

	/* IO8 */
	if(!fd_open(&this->enc_cs[0], "/sys/class/gpio/gpio40/value", FD_WRITE))
		return FALSE;

	/* IO9 */
	if(!fd_open(&this->enc_en[1], "/sys/class/gpio/gpio4/value", FD_WRITE))
		return FALSE;

	/* IO10 */
	if(!fd_open(&this->enc_cs[1], "/sys/class/gpio/gpio10/value", FD_WRITE))
		return FALSE;

	/* SPI (IO11 IO12 IO13) */
	if(!fd_open(&this->spi, "/dev/spidev1.0", FD_READ_WRITE))
		return FALSE;

	/* Set communication with LS7366R */
	if(!LS7366R_init(this->spi))
		return FALSE;

	/* Initialize encoder counters mode registers */
	ls7366R_mode0 = QUADRX4|FREE_RUN|DISABLE_INDX|FILTER_2;
	ls7366R_mode1 = BYTE_2|EN_CNTR|NO_FLAGS;

	LS7366R_write(this->spi, this->enc_cs[0], WRITE_MDR0, ls7366R_mode0);
	LS7366R_write(this->spi, this->enc_cs[0], WRITE_MDR1, ls7366R_mode1);

	LS7366R_write(this->spi, this->enc_cs[1], WRITE_MDR0, ls7366R_mode0);
	LS7366R_write(this->spi, this->enc_cs[1], WRITE_MDR1, ls7366R_mode1);

	/* Initialize counter register of encoder counters */
	LS7366R_clear(this->spi, this->enc_cs[0], CLR_CNTR);
	LS7366R_clear(this->spi, this->enc_cs[1], CLR_CNTR);

	/* Motor Disable */
	digital_write(this->mot_en, GPIO_LOW);
	/* Enable encoder counter 1 */
	digital_write(this->enc_en[0], GPIO_HIGH);
	/* Enable encoder counter 2 */
	digital_write(this->enc_en[1], GPIO_HIGH);

	/* Set pwm frequency to 1kHz */
	pwm_set_frequency(PWM_FREQ);
	/* Stop motor duty cycle*/
	pwm_set_duty_percent(this->mot_pwm, PWM_FREQ,  50.0);
	/* Enable PWM */
	digital_write(this->pwm_en, GPIO_HIGH);
	/* Disable motor*/
	Q2DSFJ_enable_motor(this, 0);

	return TRUE;
}


int Q2DSFJ_enable_motor(Q2DSFJ_T* this, int enable){
	return digital_write(this->mot_en, enable);
}

int Q2DSFJ_set_motor_voltage(Q2DSFJ_T* this, float new_voltage){
	if(new_voltage > 27.0 || new_voltage < -27.0)
		return FALSE;
	int duty_cycle = HALF_DUTY_CYCLE * (1 + new_voltage/27.0);
	pwm_set_duty(this->mot_pwm, duty_cycle);
	return TRUE;
}

int Q2DSFJ_reset_enc_counter(Q2DSFJ_T* this, int enc_number){
	if(enc_number != Q2DSFJ_ENC_1 || enc_number != Q2DSFJ_ENC_2)
		return FALSE;

  	return LS7366R_clear(this->spi, this->enc_cs[enc_number], CLR_CNTR);
}

int Q2DSFJ_enable_enc_counter(Q2DSFJ_T* this, int enc_number, int enable){
	if(enc_number != Q2DSFJ_ENC_1 || enc_number != Q2DSFJ_ENC_2)
		return FALSE;

	return digital_write(this->enc_en[enc_number], enable);
}

int Q2DSFJ_read_enc_counter_raw(Q2DSFJ_T* this, int enc_number){
	if(enc_number != Q2DSFJ_ENC_1 || enc_number != Q2DSFJ_ENC_2)
		return FALSE;

	/*Divide by 4 because it is used a x4 mode of quadracture counting*/
	return LS7366R_read(this->spi,this->enc_cs[enc_number], READ_CNTR, 2)/4;
}

int Q2DSFJ_read_enc_counter(Q2DSFJ_T* this, int enc_number){
	return (2 * MATH_PI * Q2DSFJ_read_enc_counter_raw(this, enc_number))
		/COUNTS_PER_REV;
}

int Q2DSFJ_read_lim_switch(Q2DSFJ_T* this, int limsw){
	if(limsw != Q2DSFJ_LIMSW_1 || limsw != Q2DSFJ_LIMSW_2)
		return FALSE;

  	return digital_read(this->lim_sw[limsw]);
}

int Q2DSFJ_motor_home(Q2DSFJ_T* this){
   Q2DSFJ_set_motor_voltage(this, -1.0);

   while(!Q2DSFJ_read_lim_switch(this, Q2DSFJ_LIMSW_1));

   Q2DSFJ_set_motor_voltage(this, 0.0);
   Q2DSFJ_reset_enc_counter(this,Q2DSFJ_ENC_1);
   Q2DSFJ_reset_enc_counter(this,Q2DSFJ_ENC_2);

   return TRUE;
}
