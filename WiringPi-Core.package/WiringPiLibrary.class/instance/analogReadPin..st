FFI - Core
analogReadPin: pinNumber
	"This function returns the value read at the given pin. It will be HIGH or LOW (1 or 0) depending on the logic level at the pin."
	
	^self ffiCall: #(long analogRead(long pinNumber))