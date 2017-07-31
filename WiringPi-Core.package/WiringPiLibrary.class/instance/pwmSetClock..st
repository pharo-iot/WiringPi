FFI - RaspberryPi
pwmSetClock: divisor
	"This sets the divisor for the PWM clock.
	Note: The PWM control functions can not be used when in Sys mode. To understand more about the PWM system, you’ll need 	to read the Broadcom ARM peripherals manual."	
	^self ffiCall: #(void pwmSetClock(long divisor))