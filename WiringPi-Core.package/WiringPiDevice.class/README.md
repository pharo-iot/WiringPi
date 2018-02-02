My subclasses should provide wiring pi interface to communicate with particular device by file descriptor obtained from wiring pi library.
Subclasses are supposed to represent concrete digital protocols (I2C, SPI, YART) and wrap wiring pi functions with object interface.

Internal Representation and Key Implementation Points.

    Instance Variables
	fd:		<SmallInteger>