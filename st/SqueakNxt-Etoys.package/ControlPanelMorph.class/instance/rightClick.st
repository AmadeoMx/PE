event handling
rightClick
	main isConnected ifTrue: [^ self].
	display portIndex: display portIndex + 1.
	main portName: display portName