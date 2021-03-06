connection
controlFirmwareInstalled
	| time timeout |
	time := Time millisecondClockValue.
	timeout := 5000.
	[100 milliSeconds asDelay wait.
	('*HOLA, SOY ARDUINO*' match: port readString)
		ifTrue: [
			port nextPutAll: (ByteArray with: 255).
			[port readString = ''] whileFalse.
			^ self]]
		doWhileTrue: [Time millisecondClockValue - time < timeout].
	^ FirmwareNotInstalled signal