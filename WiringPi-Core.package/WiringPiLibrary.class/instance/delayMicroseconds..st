FFI - Timings
delayMicroseconds: microSeconds
	"This causes program execution to pause for at least howLong microseconds. Due to the multi-tasking nature of Linux it could 	be longer. Note that the maximum delay is an unsigned 32-bit integer microseconds or approximately 71 minutes.

	Delays under 100 microseconds are timed using a hard-coded loop continually polling the system time, Delays over 100 	microseconds are done using the system nanosleep() function – You may need to consider the implications of very short 	delays on the overall performance of the system, especially if using threads."	
	^self ffiCall: #(void delayMicroseconds(long microSeconds))