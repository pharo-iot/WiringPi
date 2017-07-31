FFI - Core
pin: pinNumber pwmWrite: value
	
	"Writes the value to the PWM register for the given pin. The Raspberry Pi has one on-board PWM pin, pin 1 (BMC_GPIO 18, Phys 	12) and the range is 0-1024. Other PWM devices may have other PWM ranges.
	This function is not able to control the Pi’s on-board PWM when in Sys mode."
	
	^self ffiCall: #(long pwmWrite(long pinNumber, long value))