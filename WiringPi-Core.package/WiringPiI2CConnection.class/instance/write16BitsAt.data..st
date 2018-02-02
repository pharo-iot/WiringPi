input/output
write16BitsAt: reg data: dataInt  
	"Writes an 16-bit data value into the device register indicated"
		
    ^self ffiCall: #(int wiringPiI2CWriteReg16 (int fd, int reg, int dataInt))