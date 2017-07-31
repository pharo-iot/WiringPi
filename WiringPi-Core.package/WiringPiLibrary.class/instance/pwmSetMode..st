FFI - RaspberryPi
pwmSetMode: mode
	"The PWM generator can run in 2 modes – “balanced” and “mark:space”. The mark:space mode is traditional, however the default mode in the Pi is “balanced”. You can switch modes by supplying the parameter: PWM_MODE_BAL or PWM_MODE_MS."	
	^self ffiCall: #(void pwmSetMode(long mode))
