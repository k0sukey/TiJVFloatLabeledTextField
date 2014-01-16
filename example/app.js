var TiJVFloatLabeledTextField = require('be.k0suke.tijvfloatlabeledtextfield');
Ti.API.info("module is => " + TiJVFloatLabeledTextField);

var nextbutton = Ti.UI.createButton({
	title: 'Next',
	disabledColor: '#ccc',
	enabled: false
});

var win = Ti.UI.createWindow({
	title: 'Floating Label in Titanium',
	rightNavButton: nextbutton,
	backgroundColor: '#fff'
});

var nav = Ti.UI.iOS.createNavigationWindow({
	window: win
});
nav.open();

var titlefield = TiJVFloatLabeledTextField.createTextField({
	top: 4,
	left: 16,
	width: Ti.UI.FILL,
	height: 44,
	font: {
		fontSize: 16
	},
	color: '#333',
	value: '',
	hintText: 'Title',
	hintFont: {
		fontSize: 12
	},
	hintColor: '#ccc',
	activeHintColor: '#c2111d',
	clearButtonMode: Ti.UI.INPUT_BUTTONMODE_ONFOCUS
});
win.add(titlefield);

var pricefield = TiJVFloatLabeledTextField.createTextField({
	top: 53,
	left: 16,
	width: 60,
	height: 44,
	font: {
		fontSize: 16
	},
	color: '#333',
	value: '',
	hintText: 'Price',
	hintFont: {
		fontSize: 12
	},
	hintColor: '#ccc',
	activeHintColor: '#c2111d'
});
win.add(pricefield);

var locationfield = TiJVFloatLabeledTextField.createTextField({
	top: 53,
	left: 97,
	width: Ti.UI.FILL,
	height: 44,
	font: {
		fontSize: 16
	},
	color: '#333',
	value: '',
	hintText: 'Specific location (optional)',
	hintFont: {
		fontSize: 12
	},
	hintColor: '#ccc',
	activeHintColor: '#c2111d'
});
win.add(locationfield);

var descriptionarea = TiJVFloatLabeledTextField.createTextArea({
	top: 102,
	left: 16,
	width: Ti.UI.FILL,
	height: 132,
	font: {
		fontSize: 16
	},
	color: '#333',
	value: '',
	hintText: 'Description',
	hintFont: {
		fontSize: 12
	},
	hintColor: '#ccc',
	activeHintColor: '#c2111d'
});
win.add(descriptionarea);

win.add(Ti.UI.createView({
	top: 49,
	left: 16,
	width: Ti.UI.FILL,
	height: 1,
	backgroundColor: '#ccc'
}));

win.add(Ti.UI.createView({
	top: 50,
	left: 81,
	width: 1,
	height: 48,
	backgroundColor: '#ccc'
}));

win.add(Ti.UI.createView({
	top: 98,
	left: 16,
	width: Ti.UI.FILL,
	height: 1,
	backgroundColor: '#ccc'
}));

function change(e) {
	if (titlefield.getValue() !== '' &&
		pricefield.getValue() !== '' &&
		descriptionarea.getValue() !== '') {
		nextbutton.setEnabled(true);
	} else {
		nextbutton.setEnabled(false);
	}

	win.setRightNavButton(nextbutton);
}

titlefield.addEventListener('change', change);
pricefield.addEventListener('change', change);
locationfield.addEventListener('change', change);
descriptionarea.addEventListener('change', change);
