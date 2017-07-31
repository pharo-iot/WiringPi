FFI - RaspberryPi
setPadDriveGroup: wPiPin force: value
	"This sets the “strength” of the pad drivers for a particular group of pins. There are 3 groups of pins and the drive strength is 	from 0 to 7. Do not use this unless you know what you are doing."	
	^self ffiCall: #(void physPinToGpio(long wPiPin, long value))