FFI - RaspberryPi
piBoardRev
	"This returns the board revision of the Raspberry Pi. It will be either 1 or 2. Some of the BCM_GPIO pins changed number and function when moving from board revision 1 to 2, so if you are using BCM_GPIO pin numbers, then you need to be aware of the differences."	
	^self ffiCall: #(long piBoardRev())
