input/output
writeData: dataInt  
	"Simple device write. 
	Some devices accept data this way without needing to access any internal registers"
	
    ^self ffiCall: #(int wiringPiI2CWrite (int fd, int dataInt))