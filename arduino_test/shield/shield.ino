#include <SPI.h>


/*
	Conection: http://bildr.org/2012/08/rotary-encoder-arduino/
*/

/***MDR0 configuration data - the configuration byte is formed with***
***single segments taken from each group and ORing all together.***/

//Count modes
#define NQUAD 			0x00	//non-quadrature mode
#define QUADRX1 		0x01	//X1 quadrature mode
#define QUADRX2 		0x02	//X2 quadrature mode
#define QUADRX4			0x03	//X4 quadrature mode
#define COUNT_MODE		0x03	//bits location in register
#define COUNT_SHIFT		0		//bit shift in register

//Running modes
#define FREE_RUN 		0x00
#define SINGE_CYCLE 	0x04
#define RANGE_LIMIT 	0x08
#define MODULO_N 		0x0C
#define RUNNING_MODE	0x0C	//bits location in register
#define RUNNING_SHIFT	2		//bit shift in register

//Index modes
#define DISABLE_INDX	0x00	//index_disabled
#define INDX_LOADC		0x10	//index_load_CNTR
#define INDX_RESETC		0x20	//index_rest_CNTR
#define INDX_LOADO		0x30    //index_load_OL
#define ASYNCH_INDX		0x00	//asynchronous index
#define SYNCH_INDX		0x40	//synchronous index
#define INDEX_MODE		0x70	//bits location in register
#define INDEX_SHIFT		4		//bit shift in register

//Clock filter modes
#define FILTER_1		0x00	//filter clock frequncy division factor 1
#define FILTER_2		0x80	//filter clock frequncy division factor 2
#define FILTER_MODE		0x80	//bits location in register
#define FILTER_SHIFT	7		//bit shift in register

/* **MDR1 configuration data; any of these***
  ***data segments can be ORed together***/

//Flag modes
#define NO_FLAGS		0x00	//all flags disabled
#define IDX_FLAG		0x10	//IDX flag
#define CMP_FLAG		0x20	//CMP flag
#define BW_FLAG 		0x40	//BW flag
#define CY_FLAG			0x80	//CY flag
#define FLAG_MODE		0xF0	//bits location in register
#define FLAG_SHIFT		4		//bit shift in register

//1 to 4 bytes data-width
#define BYTE_4 			0x00	//four byte mode
#define BYTE_3			0x01	//three byte mode
#define BYTE_2			0x02	//two byte mode
#define BYTE_1			0x03	//one byte mode
#define DATA_WID_MODE	0x03	//bits location in register
#define DATA_WID_SHIFT	0		//bit shift in register

//Enable/disable counter
#define EN_CNTR 		0x00	//counting enabled
#define DIS_CNTR 		0x04	//counting disabled
#define COUNT_EN_MODE	0x04	//bits location in register
#define COUNT_EN_SHIFT	2		//bit shift in register

/* LS7366R op-code list */
#define CLR_MDR0		0x08
#define CLR_MDR1		0x10
#define CLR_CNTR		0x20
#define CLR_STR			0x30
#define READ_MDR0		0x48
#define READ_MDR1		0x50
#define READ_CNTR		0x60
#define READ_OTR		0x68
#define READ_STR		0x70
#define WRITE_MDR1 		0x90
#define WRITE_MDR0		0x88
#define WRITE_DTR		0x98
#define LOAD_CNTR		0xE0
#define LOAD_OTR		0xE4


/* 2DFSJ Pin Header */
#define DRV_PWM 	3
#define DRV_EN 		4
#define LIM_SW1 	5
#define LIM_SW2 	6
#define EN_C2 		7
#define SS_C2 		8
#define EN_C1 		9
#define SS_C1 		10
#define MOSI		11
#define MISO		12
#define SCK			13

void LS7366R_clear(int ss_pin, unsigned char op_code)
{
	digitalWrite(ss_pin, HIGH);
	digitalWrite(ss_pin, LOW);

	SPI.transfer(op_code);

	digitalWrite(ss_pin, HIGH);
}

void LS7366R_write(int ss_pin, unsigned char op_code, unsigned char data)
{
	digitalWrite(ss_pin, HIGH);
	digitalWrite(ss_pin, LOW);

	SPI.transfer(op_code);
	SPI.transfer(data);

	digitalWrite(ss_pin, HIGH);
}

int LS7366R_read(int ss_pin, unsigned char op_code, int bytes)
{
	volatile unsigned int result = 0;
	volatile unsigned char data = 0;

	digitalWrite(ss_pin, HIGH);
	digitalWrite(ss_pin, LOW);

	SPI.transfer(op_code);
	for(int i = 0; i < bytes; i++){
		result = result << 8;
		data = SPI.transfer(0xFF);
		result = result | data;
	}

	digitalWrite(ss_pin, HIGH);
	return result;
}

void print_modes(unsigned char mode1, unsigned char mode2)
{
	Serial.println("MDR0 Modes:");
	Serial.print("Count: ");Serial.println((mode1 & COUNT_MODE) >> COUNT_SHIFT);
 	Serial.print("Runnig: ");Serial.println((mode1 & RUNNING_MODE) >> RUNNING_SHIFT);
	Serial.print("Index: ");Serial.println((mode1 & INDEX_MODE) >> INDEX_SHIFT);
	Serial.print("Filter: ");Serial.println((mode1 & FILTER_MODE) >> FILTER_SHIFT);


	Serial.println("MDR1 Modes");
	Serial.print("Data width: ");Serial.println((mode2 & DATA_WID_MODE) >> DATA_WID_SHIFT);
	Serial.print("Counter enable: ");Serial.println((mode2 & COUNT_EN_MODE) >> COUNT_EN_SHIFT);
	Serial.print("Flags: ");Serial.println((mode2 & FLAG_MODE) >> FLAG_SHIFT);
}

void setup()
{
	unsigned char mode1, mode2;

	Serial.begin(9600);
	SPI.begin();

	pinMode(DRV_EN, OUTPUT);
	pinMode(DRV_PWM, OUTPUT);

	pinMode(LIM_SW1, INPUT);
	pinMode(LIM_SW2, INPUT);
	digitalWrite(LIM_SW1, HIGH);
	digitalWrite(LIM_SW2, HIGH);


	digitalWrite(EN_C1, OUTPUT);
	digitalWrite(EN_C2, OUTPUT);

	digitalWrite(EN_C1, HIGH);
	digitalWrite(EN_C2, HIGH);

	SPI.setDataMode(SPI_MODE0);
    SPI.setBitOrder(MSBFIRST);
    SPI.setClockDivider(SPI_CLOCK_DIV2);
	//SPI.beginTransaction(SPISettings(4000000, MSBFIRST, SPI_MODE0));

	pinMode(SS_C1, OUTPUT);
	pinMode(SS_C2, OUTPUT);

	digitalWrite(SS_C1, HIGH);
	digitalWrite(SS_C2, HIGH);

	LS7366R_clear(SS_C1, CLR_CNTR);
	LS7366R_clear(SS_C2, CLR_CNTR);

	mode1 = QUADRX4|FREE_RUN|DISABLE_INDX|FILTER_2;
	mode2 = BYTE_2|EN_CNTR|NO_FLAGS;

	LS7366R_write(SS_C1, WRITE_MDR0, mode1);
	LS7366R_write(SS_C1, WRITE_MDR1, mode2);

	LS7366R_write(SS_C2, WRITE_MDR0, mode1);
	LS7366R_write(SS_C2, WRITE_MDR1, mode2);

	Serial.println("Encoder 1 :");
	mode1 = LS7366R_read(SS_C1, READ_MDR0, 1);
	mode2 = LS7366R_read(SS_C2, READ_MDR1, 1);
	print_modes(mode1, mode2);

	Serial.println("Encoder 2 :");
	mode1 = LS7366R_read(SS_C1, READ_MDR0, 1);
	mode2 = LS7366R_read(SS_C2, READ_MDR1, 1);
	print_modes(mode1, mode2);

}

void loop(){

	Serial.print("Counter1 ::: ");
	Serial.print(LS7366R_read(SS_C1, READ_CNTR, 2)/4);
	Serial.print(" Limit Switch 1:::");
	Serial.println(digitalRead(LIM_SW1));

	Serial.print("Counter 2 ::: ");
	Serial.print(LS7366R_read(SS_C2, READ_CNTR, 2)/4);
	Serial.print(" Limit Switch 2:::");
	Serial.println(digitalRead(LIM_SW2));

	if(Serial.available() > 0){
		char buff = Serial.read();
		if(buff == ('r' | 'R')){
			LS7366R_clear(SS_C1, CLR_CNTR);
			LS7366R_clear(SS_C2, CLR_CNTR);
		}
	}

	analogWrite(DRV_PWM, (LS7366R_read(SS_C1, READ_CNTR, 2)/4) % 256);
	digitalWrite(DRV_EN, !digitalRead(LIM_SW1));
	delay(1000);
}
