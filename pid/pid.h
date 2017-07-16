#ifndef _PID_H_
#define _PID_H_

#define MAX_BOUNDARY 0
#define MIN_BOUNDARY 1

struct _pid{
	/* */
	float set_point;

	/* Constants PID*/
	float kp;
	float ki;
	float kd;

	/* Saturation Control*/
	int max_flag;
	float max;
	int min_flag;
	float min;

	/* Internal state variables*/
	float integrated;
	float _last_sample;
};

typedef struct _pid PID_T;

int pid_init(PID_T* pid, float kp, float ki, float kd);
int pid_set_bondary(PID_T* pid, int mode, float value);
int pid_setpoint(PID_T* pid, float new_set_point);
int pid_compute(PID_T* pid, float dt, float sample);

#endif
