FFI - I2C
openI2C: devId
	"This initialises the I2C system with your given device identifier. The ID is the I2C number of the device and you can use the i2cdetect program to find this out. wiringPiI2CSetup() will work out which revision Raspberry Pi you have and open the appropriate device in /dev.
	The return value is the standard Linux filehandle, or -1 if any error – in which case, you can consult errno as usual.
	E.g. the popular MCP23017 GPIO expander is usually device Id 0x20, so this is the number you would pass into wiringPiI2CSetup().
	If the return value is negative then an error has happened and you should consult errno"
    ^self ffiCall: #(int wiringPiI2CSetup (int devId) )