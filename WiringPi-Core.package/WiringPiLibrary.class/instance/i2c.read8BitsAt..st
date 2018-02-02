FFI - I2C
i2c: fd read8BitsAt: reg
	"Reads an 8-bit value from the device register indicated"
	
    ^self ffiCall: #(int wiringPiI2CReadReg8 (int fd, int reg) )