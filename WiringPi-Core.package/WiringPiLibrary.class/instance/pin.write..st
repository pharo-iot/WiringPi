FFI - Core
pin: pinNumber write: value
	
	"Writes the value HIGH or LOW (1 or 0) to the given pin which must have been previously set as an output.
	WiringPi treats any non-zero number as HIGH, however 0 is the only representation of LOW."
	
	^self ffiCall: #(long digitalWrite(long pinNumber, long value))