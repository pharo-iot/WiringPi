as yet unclassified
run: int
	| w |
	w :=  Delay forMilliseconds: int.
	
	glow ring: PIGLOW_RED intensity: 0.
	glow ring: PIGLOW_WHITE intensity: 0.
	glow ring: PIGLOW_GREEN intensity: 0.
	glow ring: PIGLOW_ORANGE intensity: 0.
	glow ring: PIGLOW_BLUE intensity: 0.
	glow ring: PIGLOW_YELLOW intensity: 0.
	
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
	glow ring: PIGLOW_RED intensity: 0.
	glow ring: PIGLOW_WHITE intensity: 0.
	glow ring: PIGLOW_GREEN intensity: 0.
	glow ring: PIGLOW_ORANGE intensity: 0.
	glow ring: PIGLOW_BLUE intensity: 0.
	glow ring: PIGLOW_YELLOW intensity: 0.
	
	