FFI - Interrupts
wiringPiISRPin: pinNumber edgeType: edgeType function: aFunctionPointerOrCallback
	"This function registers a function to received interrupts on the specified pin. The edgeType parameter is either 	INT_EDGE_FALLING, INT_EDGE_RISING, INT_EDGE_BOTH or INT_EDGE_SETUP. If it is INT_EDGE_SETUP then no initialisation of 	the pin will happen – it’s assumed that you have already setup the pin elsewhere (e.g. with the gpio program), but if you 	specify one of the other types, then the pin will be exported and initialised as specified. This is accomplished via a suitable 	call to the gpio utility program, so it need to be available.
	The pin number is supplied in the current mode – native wiringPi, BCM_GPIO, physical or Sys modes.
	This function will work in any mode, and does not need root privileges to work.
	The function will be called when the interrupt triggers. When it is triggered, it’s cleared in the dispatcher before calling your 	function, so if a subsequent interrupt fires before you finish your handler, then it won’t be missed. (However it can only track 	one more interrupt, if more than one interrupt fires while one is being handled then they will be ignored)

	This function is run at a high priority (if the program is run using sudo, or as root) and executes concurrently with the main 	program. It has full access to all the global variables, open file handles and so on."	
	"int wiringPiISR (int pin, int edgeType,  void (*function)(void)) ;"

	^self shouldBeImplemented 
