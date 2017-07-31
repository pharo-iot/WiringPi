private FFI
piGlowRing: ring intensity: intensity

	^self ffiCall: #(void piGlowRing(long ring, long intensity))
	