#ifndef __Q2DSFJ_H__
#define __Q2DSFJ_H__

/* Datasheet */
#define COUNTS_PER_REV	4096
#define MATH_PI 		3.14159265358979323846264338327950288
#define PWM_FREQ		1000
#define HALF_DUTY_CYCLE 500000

#define Q2DSFJ_ENC_1 	0
#define Q2DSFJ_ENC_2 	1

#define Q2DSFJ_LIMSW_1 	0
#define Q2DSFJ_LIMSW_2 	1

#define TRUE			1
#define FALSE			0

struct _Q2DSFJ {
	/* File handle for motor enable pin */
	int mot_en;
	/* File handle for motor pwm pin */
	int mot_pwm;
	/* File handle for enable galileo pwm */
	int pwm_en;
	/* File handles for limit switch pins */
	int lim_sw[2];
	/* File handles for encoder counter enable */
	int enc_en[2];
	/* File handles for encoder counter chip select */
	int enc_cs[2];
	/* File handle for spi communication */
	int spi;
};

typedef struct _Q2DSFJ Q2DSFJ_T;

/**
	Inicializes file handles, encoder counters, motor pwm
**/
int Q2DSFJ_initialize(Q2DSFJ_T* this);

/**
	Reset counter register of encoder counters
**/
int Q2DSFJ_reset_enc_counter(Q2DSFJ_T* this, int enc_number);

/**
	Disable/Enable counter register of encoder counters
**/
int Q2DSFJ_enable_enc_counter(Q2DSFJ_T* this, int enc_number, int enable);

/**
	Read encoder counters
**/
int Q2DSFJ_read_enc_counter_raw(Q2DSFJ_T* this, int enc_number);

/**
	Read encoder counters and transform to RAD
**/
int Q2DSFJ_read_enc_counter(Q2DSFJ_T* this, int enc_number);

/**
	Read encoder counters and return this number
**/

int Q2DSFJ_read_lim_switch(Q2DSFJ_T* this, int limsw);

/**
	Disable/Enable motor
**/
int Q2DSFJ_enable_motor(Q2DSFJ_T* this, int enable);
/**
	Set motor voltage between [-27; 27]
**/
int Q2DSFJ_set_motor_voltage(Q2DSFJ_T* this, float new_voltage);

/**
	Set the motor to go to left limit with a low speed and when it's arrived
		reset encoder counters
	PAY ATTETION: this routine is very slowly and stop the code
**/
int Q2DSFJ_motor_home(Q2DSFJ_T* this);

#endif
