// This is a test harness for your module
// You should do something interesting in this harness 
// to test out the module and to provide instructions 
// to users on how to use it by example.


// open a single window
var win = Ti.UI.createWindow({
	backgroundColor:'white'
});
win.open();

// TODO: write your module tests here
var TiJVFloatLabeledTextField = require('be.k0suke.tijvfloatlabeledtextfield');
Ti.API.info("module is => " + TiJVFloatLabeledTextField);

var textfield = TiJVFloatLabeledTextField.createTextField({
	top: 40,
	left: 10,
	width: 300,
	height: 44,
	value: 'default value',
	font: {
		fontSize: 16
	},
	color: '#333',
	hintText: 'here is textfield',
	hintFont: {
		fontSize: 12
	},
	hintColor: '#ccc',
	activeHintColor: '#f00',
	clearButtonMode: Ti.UI.INPUT_BUTTONMODE_ONFOCUS
});
win.add(textfield);

textfield.addEventListener('change', function(e){
	console.log(e);
});

var textarea = TiJVFloatLabeledTextField.createTextArea({
	top: 104,
	left: 10,
	width: 300,
	height: 200,
	value: 'default value',
	font: {
		fontSize: 16
	},
	color: '#333',
	hintText: 'here is textarea',
	hintFont: {
		fontSize: 12
	},
	hintColor: '#ccc',
	activeHintColor: '#f00'
});
win.add(textarea);

textarea.addEventListener('change', function(e){
	console.log(e);
});