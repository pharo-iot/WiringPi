FFI - Setup
wiringPiSetupGpio
	"This is identical to above, however it allows the calling programs to use the Broadcom GPIO pin numbers directly with no 	re-mapping.

	As above, this function needs to be called with root privileges, and note that some pins are different from revision 1 to 	revision 2 boards."
	
	^self ffiCall: #(void wiringPiSetupGpio())