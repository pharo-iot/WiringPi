FFI - Concurrent Processing
piUnlock:  keyNum
	"These allow you to synchronise variable updates from your main program to any threads running in your program. keyNum is a 	number from 0 to 3 and represents a “key”. When another process tries to lock the same key, it will be stalled until the first 	process has unlocked the same key.

	You may need to use these functions to ensure that you get valid data when exchanging data between your main program and 	a thread – otherwise it’s possible that the thread could wake-up halfway during your data copy and change the data – so the 	data you end up copying is incomplete, or invalid. See the wfi.c program in the examples directory for an example."	

	^self ffiCall: #(void piUnlock(long keyNum))
