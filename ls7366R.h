/*** SPI configuration***
 *** CPOL = 0 	CPHA = 0, Mode 0***
 *** MSB first
 *** Min period of SCK = 200ns
 *** Min period of SS/ = 200ns
***/

/*** MDR0 configuration data ***/

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

/* **MDR1 configuration data***/

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
