My subclasses represent connection to physical devices using one of the propritary protocol like I2C, SPI or YART.

Subclasses wrap wiringpi functions which are responsible for given protocol. They provide object interface for them.

My instances should be created by WiringPiLibrary for given device address. For example: 

	lib openI2C: deviceAddressInt.

Library creates instance of connection using retrieved file descriptor which should be used in input/output implementation. It uses following constructor:
	
	WiringPiI2CConnection on: fd.

So library responsible to opens connections. And connetions are responsible for clowsing:  
	
	i2cConnection close.

I implement close operation using standard close() function from LibC: it just closes given file. Many docs suggest such approach.

Internal Representation and Key Implementation Points.

    Instance Variables
	fd:		<SmallInteger>