#ifndef __IO_UTILS_H__
#define __IO_UTILS_H__

/*
  ioutils.h: Definitions for General Input Output utility functions on
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

/* Digital values */
#define GPIO_HIGH 	1
#define GPIO_LOW 	0

/* File open modes */
#define FD_STR_MODES {"read", "write", "read and write"}
#define FD_READ  		0
#define FD_WRITE  		1
#define FD_READ_WRITE 	2

/* Open GPIO file handle */
int fd_open(int *fd, const char *path, int mode);

/* Set the logic value of a output GPIO */
int digital_write(int pin_fd, int data);

/* Read the logic value of a input GPIO */
int digital_read(int pin_fd);

/* Read the analog value of a GPIO RAW */
int analog_read_raw(int pin_fd);

/* Read the analog value of a GPIO scaled */
int analog_read_scaled(int pin_fd, int scale_fd);

/* Read the analog value of a GPIO scaled to 5V */
float analog_read_scaled_5v(int pin_fd, int scale_fd);

/* Set pwm frequency */
int pwm_set_frequency(float freq);

/* Set pwm period */
int pwm_set_period(int period);

/* Set pwm duty cycle */
int pwm_set_duty(int duty_fd, int duty_cycle);

/* Set pwm duty cycle in percent */
int pwm_set_duty_percent(int duty_fd, int freq, float percent);

#endif
