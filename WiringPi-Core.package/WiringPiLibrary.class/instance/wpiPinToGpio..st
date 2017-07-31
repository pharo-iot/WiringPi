FFI - RaspberryPi
wpiPinToGpio: wPiPin
	"This returns the BCM_GPIO pin number of the supplied wiringPi pin. It takes the board revision into account."	
	^self ffiCall: #(long wpiPinToGpio(long wPiPin))