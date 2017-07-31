FFI - Core
pin: pinNumber analogWrite: value
	"This writes the given value to the supplied analog pin. You will need to register additional analog modules to enable this 	function for devices such as the Gertboard."
	
	^self ffiCall: #(long analogWrite(long pinNumber, long value))