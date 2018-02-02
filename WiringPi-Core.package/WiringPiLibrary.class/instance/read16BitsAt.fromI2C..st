FFI - I2C
read16BitsAt: reg fromI2C: fd
	"Reads an 16-bit value from the device register indicated"
	
    ^self ffiCall: #(int wiringPiI2CReadReg16 (int fd, int reg) )