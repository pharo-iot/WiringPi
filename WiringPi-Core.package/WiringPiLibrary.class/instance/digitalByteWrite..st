FFI - RaspberryPi
digitalByteWrite: value
	"This writes the 8-bit byte supplied to the first 8 GPIO pins. It’s the fastest way to set all 8 bits at once to a particular value, although it still takes two write operations to the Pi’s GPIO hardware."	
	^self ffiCall: #(void digitalWriteByte(long value))
