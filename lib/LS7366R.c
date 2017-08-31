#include <LS7366R.h>

#include <ioutils.h>

#include <stdio.h>
#include <stdlib.h>

#include <fcntl.h>
#include <stdint.h>
#include <unistd.h>

#include <sys/ioctl.h>
#include <linux/spi/spidev.h>

int LS7366R_init(int spi_fd)
{
	uint8_t mode = SPI_MODE_0;
	uint8_t lsb = 0;
	uint8_t bpw = 8;
	uint32_t rate = 5000000;

	if(ioctl(spi_fd, SPI_IOC_WR_MODE, &mode))
		return 0;

	if(ioctl(spi_fd, SPI_IOC_WR_LSB_FIRST, &lsb))
		return 0;

	if(ioctl(spi_fd, SPI_IOC_WR_BITS_PER_WORD, &bpw))
		return 0;

	if(ioctl(spi_fd, SPI_IOC_WR_MAX_SPEED_HZ, &rate))
		return 0;

	return 1;
}

int LS7366R_clear(int spi_fd, int cs_fd, unsigned char op_code)
{
	int n;
	digital_write(cs_fd, GPIO_HIGH);
	digital_write(cs_fd, GPIO_LOW);

	n = write(spi_fd, &op_code, sizeof(op_code));

	digital_write(cs_fd, GPIO_HIGH);

	if(n != sizeof(op_code))
		return 0;

	return 1;
}

int LS7366R_write(int spi_fd, int cs_fd, unsigned char op_code, unsigned char data)
{
	int n1, n2;
	digital_write(cs_fd, GPIO_HIGH);
	digital_write(cs_fd, GPIO_LOW);

	n1 = write(spi_fd, &op_code, sizeof(op_code));
	n2 = write(spi_fd, &data, sizeof(data));

	digital_write(cs_fd, GPIO_HIGH);

	if((n1 != sizeof(op_code)) || (n2 != sizeof(data)))
		return 0;

	return 1;
}

int LS7366R_read(int spi_fd, int cs_fd, unsigned char op_code, int bytes)
{
	int i;
	unsigned int result = 0;
	unsigned char data = 0;

	digital_write(cs_fd, GPIO_HIGH);
	digital_write(cs_fd, GPIO_LOW);

	write(spi_fd, &op_code, sizeof(unsigned char));
	for(i = 0; i < bytes; i++){
		result = result << 8;
		lseek(spi_fd, 0, SEEK_SET);
		while(read(spi_fd, &data, sizeof(data)) != sizeof(data));
		result = result | data;
	}

	digital_write(cs_fd, GPIO_HIGH);

	return result;
}
