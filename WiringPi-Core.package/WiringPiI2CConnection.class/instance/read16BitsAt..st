input/output
read16BitsAt: reg
	"Reads an 16-bit value from the device register indicated"
	
    ^self ffiCall: #(int wiringPiI2CReadReg16 (int fd, int reg) )