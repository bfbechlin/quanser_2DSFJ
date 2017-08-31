#include <stdio.h>
#include <stdlib.h>

#include <time.h>
#include <pid.h>
#include <Q2DSFJ.h>

#define THRESHOLD 0.00001
int main(int argc, char* argv[]){
	Q2DSFJ_T *lib = (Q2DSFJ_T*)malloc(sizeof(Q2DSFJ_T));

	PID_T *pid = (PID_T*)malloc(sizeof(PID_T));

	clock_t last, now;
	float angle, sample, new_voltage, delta, rad_angle;

	if(argc != 2)
		printf("Error\n\tUsage: %s <angle[0;180]>", argv[0]);

	/* Init library*/
	Q2DSFJ_initialize(lib);
	/* Init pid*/
	pid_init(pid, 0.1, 0.2, 0.0005);
	pid_set_boundary(pid, MAX_BOUNDARY, 27);
	pid_set_boundary(pid, MIN_BOUNDARY, -27);

	angle = atof(argv[1]);

	if(angle < 0 || angle > 180)
		printf("Error\n\t Angle MUST BE [0;180]");

	rad_angle = (angle*MATH_PI)/180;
	/* Enable motor*/
	Q2DSFJ_enable_motor(lib, 1);
	/* Return motor to left*/
	Q2DSFJ_motor_home(lib);

	pid_setpoint(pid, rad_angle);
	last = clock();

	while(1){
		/* Some limit swtich arrived */
		if (!Q2DSFJ_read_lim_switch(lib, Q2DSFJ_LIMSW_1) ||
			!Q2DSFJ_read_lim_switch(lib, Q2DSFJ_LIMSW_2))
			break;

		/* Arith. avg of two encoders */
		sample = Q2DSFJ_read_enc_counter(lib, Q2DSFJ_ENC_1);
		sample += Q2DSFJ_read_enc_counter(lib, Q2DSFJ_ENC_2);
		sample /= 2;

		delta = sample - rad_angle;
		delta = delta < 0 ? -1*delta : delta;
		/* Arrived on position*/
		if(delta <= THRESHOLD)
			break;

		now = clock();
		/* Calculate the pid */
		new_voltage = pid_compute(pid, (now-last)/CLOCKS_PER_SEC, sample);
		Q2DSFJ_set_motor_voltage(lib, new_voltage);
		last = now;
	}
	Q2DSFJ_set_motor_voltage(lib, 0);
	Q2DSFJ_enable_motor(lib, 0);

	free(lib);
	free(pid);
	return 0;
}
