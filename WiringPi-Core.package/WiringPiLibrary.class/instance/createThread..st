FFI - Concurrent Processing
createThread:  threadName 
	"This function creates a thread which is another function in your program previously declared using the PI_THREAD declaration. This function is then run concurrently with your main program. An example may be to have this function wait for an interrupt while your program carries on doing other tasks. The thread can indicate an event, or action by using global variables to communicate back to the main program, or other threads."	

	^self ffiCall: #(long piThreadCreate(String threadName))