FFI - Setup
wiringPiSetupPhys
	"Identical to above, however it allows the calling programs to use the physical pin numbers on the P1 connector only.
	As above, this function needs to be called with root priviliges."
	
	^self ffiCall: #(void wiringPiSetupPhys())
