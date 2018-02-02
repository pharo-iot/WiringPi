FFI - I2C
i2c: fd write: dataInt  
	"Simple device write. 
	Some devices accept data this way without needing to access any internal registers"
	
    ^self ffiCall: #(int wiringPiI2CWrite (int fd, int data))