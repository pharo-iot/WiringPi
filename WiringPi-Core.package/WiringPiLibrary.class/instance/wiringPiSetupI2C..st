FFI - I2C
wiringPiSetupI2C: devId

    ^self ffiCall: #(int wiringPiI2CSetup (int devId) )