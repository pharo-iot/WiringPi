FFI - I2C
writeI2C: fd data: dataInt  
	"Simple device write. 
	Some devices accept data this way without needing to access any internal registers"
	
    ^self ffiCall: #(int SwiringPiI2CWrite (int fd, int data))