FFI - Core
pin: pinNumber pullUpDnMode: mode
	"This sets the pull-up or pull-down resistor mode on the given pin, which should be set as an input. Unlike the Arduino, the 	BCM2835 has both pull-up an down internal resistors. The parameter pud should be; PUD_OFF=0 (no pull up/down), PUD_DOWN=1 (pull to ground) or PUD_UP=2 (pull to 3.3v) The internal pull up/down resistors have a value of approximately 50KΩ on the 	Raspberry Pi.

	This function has no effect on the Raspberry Pi’s GPIO pins when in Sys mode. If you need to activate a pull-up/pull-down, then 	you can do it with the gpio program in a script before you start your program."

	^self ffiCall: #(long pullUpDnControl(long pinNumber, long mode))