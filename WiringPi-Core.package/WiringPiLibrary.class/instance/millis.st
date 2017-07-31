FFI - Timings
millis
	"This returns a number representing the number of milliseconds since your program called one of the wiringPiSetup functions. 	It returns an unsigned 32-bit number which wraps after 49 days."	

	^self ffiCall: #(long millis())