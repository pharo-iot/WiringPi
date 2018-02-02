FFI - I2C
closeI2C: fd

	^ self ffiCall: #(int close #(int fd)) module: LibC