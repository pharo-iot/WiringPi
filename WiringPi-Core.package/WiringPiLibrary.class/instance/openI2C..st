FFI - I2C
openI2C: devId
	
	| fd |
	fd := self wiringPiI2CSetup: devId.
	fd < 0 ifTrue: [ ^self error: 'cant setup I2C on given address'].
	
	^WiringPiI2CDevice on: fd