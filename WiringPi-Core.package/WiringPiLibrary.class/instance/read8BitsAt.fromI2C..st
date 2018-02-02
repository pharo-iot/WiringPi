FFI - I2C
read8BitsAt: reg fromI2C: fd
	"Reads an 8-bit value from the device register indicated"
	
    ^self ffiCall: #(int wiringPiI2CReadReg8 (int fd, int reg) )