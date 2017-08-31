/*
  ioutils.c: Implementation for General Input Output utility functions on
  	Intel Galileo2 board.

  This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

	Beuren Bechlin
	<https://github.com/bfbechlin>
	<https://gitlab.com/maplex>
*/

#include <ioutils.h>

#include <stdlib.h>
#include <stdio.h>

#include <fcntl.h>
#include <unistd.h>
#include <string.h>

#define NS 1000000000;

int fd_open(int *fd, const char *path, int mode){
	int fcntl_mode;
	char* mode_str[3] = FD_STR_MODES;

	if(mode ==  FD_READ)
		fcntl_mode = O_RDONLY;
	else if(mode == FD_WRITE)
		fcntl_mode = O_WRONLY;
	else if(mode == FD_READ_WRITE)
		fcntl_mode = O_RDWR;
	else
		return 0;

	if((*fd=open(path, fcntl_mode)) < 0){
		fprintf(stderr, "Error at open %s for %s.\n", path,
		mode_str[mode]);
		return 0;
	}

	return 1;
}

int digital_write(int pin_fd, int data){
	char state = data + '0';

	lseek(pin_fd, 0, SEEK_SET);

	return write(pin_fd, &state, sizeof(state));
}

int digital_read(int pin_fd){
	char state;

	lseek(pin_fd, 0, SEEK_SET);
	read(pin_fd, &state, sizeof(state));

	return (state - '0');
}

int analog_read_raw(int pin_fd){
	char buffer[80];
	int raw;

	lseek(pin_fd, 0, SEEK_SET);
	read(pin_fd, buffer, sizeof(buffer));
	raw = atoi(buffer);

	return raw;
}

int analog_read_scaled(int pin_fd, int scale_fd){
	char buffer[64];
	float scale;
	int raw;

	lseek(scale_fd, 0, SEEK_SET);
	read(scale_fd, buffer, sizeof(buffer));
	scale = atoi(buffer);

	lseek(pin_fd, 0, SEEK_SET);
	read(pin_fd, buffer, sizeof(buffer));
	raw = atoi(buffer);

	return raw*scale;
}


float analog_read_scaled_5v(int pin_fd, int scale_fd){
	char buffer[64];
	float scale;
	int raw;

	lseek(scale_fd, 0, SEEK_SET);
	read(scale_fd, buffer, sizeof(buffer));
	scale = atof(buffer)/1000.0;

	lseek(pin_fd, 0, SEEK_SET);
	read(pin_fd, buffer, sizeof(buffer));
	raw = atoi(buffer);

	return raw*scale;
}

int pwm_set_frequency(float freq){
	int period = (1/freq) * NS;

	return pwm_set_period(period);
}

int pwm_set_period(int period){
	int fd, n;
	char buffer[64];

	snprintf(buffer, sizeof(buffer), "%d", period);

	if((fd=open("/sys/class/pwm/pwmchip0/device/pwm_period",O_WRONLY)) == -1)
		return 0;

	n = write(fd, buffer, strlen(buffer));
	close(fd);

	return n;
}

int pwm_set_duty(int duty_fd, int duty_cycle){
	char buffer[80];

	snprintf(buffer, sizeof(buffer), "%d\n", duty_cycle);
	lseek(duty_fd, 0, SEEK_SET);

	return write(duty_fd, buffer, strlen(buffer));
}

int pwm_set_duty_percent(int duty_fd, int freq, float percent){
	if(percent < 0.0 || percent >  100.0)
		return 0;

	int duty_cycle = (1/freq)*(100.0/percent)*NS;

	return pwm_set_duty(duty_fd, duty_cycle);
}
