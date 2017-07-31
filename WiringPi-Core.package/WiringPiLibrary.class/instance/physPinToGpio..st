FFI - RaspberryPi
physPinToGpio: wPiPin
	"This returns the BCM_GPIO pin number of the supplied wiringPi pin. It takes the board revision into account."	
	^self ffiCall: #(long physPinToGpio(long wPiPin))