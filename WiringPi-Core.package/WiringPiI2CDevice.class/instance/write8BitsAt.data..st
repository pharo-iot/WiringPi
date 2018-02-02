input/output
write8BitsAt: reg data: dataInt  
	"Writes an 8-bit data value into the device register indicated"
		
    ^self ffiCall: #(int wiringPiI2CWriteReg8 (int fd, int reg, int dataInt))