FFI - I2C
write16Bits: dataInt at: reg toI2C: fd  
	"Writes an 16-bit data value into the device register indicated"
		
    ^self ffiCall: #(int wiringPiI2CWriteReg16 (int fd, int reg, int data))