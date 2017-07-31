FFI - RaspberryPi
pwmSetRange: range
	"This sets the range register in the PWM generator. The default is 1024."	
	^self ffiCall: #(void pwmSetMode(long mode))