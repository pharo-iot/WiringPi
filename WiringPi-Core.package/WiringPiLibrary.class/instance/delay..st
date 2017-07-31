FFI - Timings
delay: milliSeconds
	"This causes program execution to pause for at least howLong milliseconds. Due to the multi-tasking nature of Linux it could be 	longer. Note that the maximum delay is an unsigned 32-bit integer or approximately 49 days."	
	^self ffiCall: #(void delay(long milliSeconds))
