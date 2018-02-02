FFI - I2C
write8Bits: dataInt at: reg toI2C: fd  
	"Writes an 8-bit data value into the device register indicated"
	
    ^self ffiCall: #(int wiringPiI2CWriteReg8 (int fd, int reg, int data))