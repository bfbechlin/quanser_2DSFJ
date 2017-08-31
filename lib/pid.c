#include <pid.h>
#include <stdio.h>
#include <stdlib.h>

int pid_init(PID_T* pid, float kp, float ki, float kd){
	pid->kp = kp;
	pid->ki = ki;
	pid->kd = kd;

	pid->max_flag = 0;
	pid->min_flag = 0;

	pid->_last_sample = 0;
	pid->integrated = 0;
	return 1;
}

int pid_set_boundary(PID_T* pid, int mode, float value){
	switch (mode) {
		case MAX_BOUNDARY:
			pid->max_flag = 1;
			pid->max = value;
			return 1;
		case MIN_BOUNDARY:
			pid->min_flag = 1;
			pid->min = value;
			return 1;
		default:
			return 0;
	}
}

int pid_setpoint(PID_T* pid, float new_set_point){
	pid->set_point = new_set_point;
	return 1;
}

int pid_compute(PID_T* pid, float dt, float sample){
	float p, i, d, error, out;

	error = pid->set_point - sample;

	p = error;
	i = pid->integrated + error * dt;
	d = (pid->_last_sample - sample) / dt;

	pid->_last_sample = sample;
	pid->integrated = i;

	out = p * pid->kp + i * pid->ki + d * pid->kd;

	if(pid->max_flag){
		if(out > pid->max)
			out = pid->max;
	}
	if(pid->min_flag){
		if(out < pid->min)
			out = pid->min;
	}

	return out;
}
