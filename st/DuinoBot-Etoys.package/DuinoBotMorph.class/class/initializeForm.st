form
initializeForm
	^ (((FileDirectory default
		directoryNamed: 'imgs')
		directoryNamed: 'DuinoBot-Etoys')
		directoryNamed: 'DuinoBotMorph')
		fileNamed: 'form.png' do: [:file |
			form := PNGReadWriter formFromStream: file]