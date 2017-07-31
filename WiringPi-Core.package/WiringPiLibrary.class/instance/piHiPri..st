FFI - Thread Priority
piHiPri: priority
	"This attempts to shift your program (or thread in a multi-threaded program) to a higher priority and enables a real-time 	scheduling. The priority parameter should be from 0 (the default) to 99 (the maximum). This won’t make your program go any 	faster, but it will give it a bigger slice of time when other programs are running. The priority parameter works relative to others 	so you can make one program priority 1 and another priority 2 and it will have the same effect as setting one to 10 and the 	other to 90 (as long as no other programs are running with elevated priorities)

	The return value is 0 for success and -1 for error. If an error is returned, the program should then consult the errno global 	variable, as per the usual conventions.

	Note: Only programs running as root can change their priority. If called from a non-root program then nothing happens."	
	
	^self ffiCall: #(long piHiPri(long priority))
