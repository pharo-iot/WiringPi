input/output
read8BitsArray: blockSize startingAt: reg
	| result bits |
	result := ByteArray new: blockSize.
	
	1 to: blockSize do: [ :i | 
		bits := self read8BitsAt: reg + i - 1.
		result at: i put: bits].
	
	^result