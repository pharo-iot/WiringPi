FFI - I2C
readI2C: fd   

    ^self ffiCall: #(int wiringPiI2CRead (int fd))