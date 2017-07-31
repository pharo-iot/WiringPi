FFI - Core
pin: pinNumber mode: mode
	
	"This sets the mode of a pin to either INPUT=0, OUTPUT=1, PWM_OUTPUT=2 or GPIO_CLOCK. Note that only wiringPi pin 1 (BCM_GPIO 	18) supports PWM output and only wiringPi pin 7 (BCM_GPIO 4) supports CLOCK output modes.

	This function has no effect when in Sys mode. If you need to change the pin mode, then you can do it with the gpio program in 	a script before you start your program."
	
	^self ffiCall: #(long pinMode(long pinNumber, long mode))