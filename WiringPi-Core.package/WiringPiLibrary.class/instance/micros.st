FFI - Timings
micros
	"This returns a number representing the number of microseconds since your program called one of the wiringPiSetup 	functions. It returns an unsigned 32-bit number which wraps after approximately 71 minutes."	
	^self ffiCall: #(long micros())