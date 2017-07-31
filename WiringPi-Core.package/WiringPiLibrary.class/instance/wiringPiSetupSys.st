FFI - Setup
wiringPiSetupSys
	"This initialises wiringPi but uses the /sys/class/gpio interface rather than accessing the hardware directly. This can be called as 	a non-root user provided the GPIO pins have been exported before-hand using the gpio program. Pin numbering in this mode is 	the native Broadcom GPIO numbers – the same as wiringPiSetupGpio() above, so be aware of the differences between Rev 1 	and Rev 2 boards.

	Note: In this mode you can only use the pins which have been exported via the /sys/class/gpio interface before you run your 	program. You can do this in a separate shell-script, or by using the system() function from inside your program to call the gpio 	program.

	Also note that some functions have no effect when using this mode as they’re not currently possible to action unless called 	with root privileges. (although you can use system() to call gpio to set/change modes if needed)"	
			
	^self ffiCall: #(void wiringPiSetupSys())
