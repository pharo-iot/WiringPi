as yet unclassified
run
	| w |
	glow setup.
	w :=  Delay forMilliseconds: 10.
	[true] whileTrue:[
	1 to: 100 do:[:intensity | 
		w wait.
		glow ring: PIGLOW_RED intensity: intensity ].
	1 to: 100 do:[:intensity | 
		w wait.
		glow ring: PIGLOW_YELLOW intensity: intensity ].
	1 to: 100 do:[:intensity | 
		w wait.
		glow ring: PIGLOW_ORANGE intensity: intensity ].
	1 to: 100 do:[:intensity | 
		w wait.
		glow ring: PIGLOW_GREEN intensity: intensity ].
	1 to: 100 do:[:intensity | 
		w wait.
		glow ring: PIGLOW_BLUE intensity: intensity ].
	1 to: 100 do:[:intensity | 
		w wait.
		glow ring: PIGLOW_WHITE intensity: intensity ].
	].
	