private FFI
piGlowSetup: trueOrFalseBit

	^self ffiCall: #(void piGlowSetup(long trueOrFalseBit))