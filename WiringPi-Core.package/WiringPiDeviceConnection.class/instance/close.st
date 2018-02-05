controlling
close
	^ self ffiCall: #(int close #(int fd)) module: LibC