FFI - Setup
wiringPiSetup
	"This initialises wiringPi and assumes that the calling program is going to be using the wiringPi pin numbering scheme. This is a 	simplified numbering scheme which provides a mapping from virtual pin numbers 0 through 16 to the real underlying Broadcom 	GPIO pin numbers. See the pins page for a table which maps the wiringPi pin number to the Broadcom GPIO pin number to the 	physical location on the edge connector.

	This function needs to be called with root privileges"

	^self ffiCall: #(void wiringPiSetup())