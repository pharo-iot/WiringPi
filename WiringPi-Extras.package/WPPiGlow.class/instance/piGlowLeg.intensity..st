private FFI
piGlowLeg: leg intensity: intensity

	^self ffiCall: #(void piGlowLeg(long leg, long intensity))