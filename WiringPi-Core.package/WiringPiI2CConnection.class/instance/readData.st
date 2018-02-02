input/output
readData   
	"Simple device read. Some devices present data when you read them without having to do any register transactions"
	
    ^self ffiCall: #(int wiringPiI2CRead (int fd))