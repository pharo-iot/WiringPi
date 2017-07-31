FFI - Interrupts
waitForInterruptPin: pinNumber timeOut: milliSeconds
	"When called, it will wait for an interrupt event to happen on that pin and your program will be stalled. The timeOut 	parameter is given in milliseconds, or can be -1 which means to wait forever.
	
	The return value is -1 if an error occurred (and errno will be set appropriately), 0 if it timed out, or 1 on a successful interrupt 	event.

	Before you call waitForInterrupt, you must first initialise the GPIO pin and at present the only way to do this is to use the gpio 	program, either in a script, or using the system() call from inside your program.
	e.g. We want to wait for a falling-edge interrupt on GPIO pin 0, so to setup the hardware, we need to run:
	gpio edge 0 falling	
	before running the program."	

	^self ffiCall: #(long waitForInterrupt(long pinNumber, long milliSeconds))