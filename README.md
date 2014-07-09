# TiJVFloatLabeledTextField

Wrapping JVFloatLabeledTextField module.

![screenshot](https://camo.githubusercontent.com/be57d040ec0ce5d6467fb73564c6bcb6c76d5a7b/687474703a2f2f6472696262626c652e73332e616d617a6f6e6177732e636f6d2f75736572732f363431302f73637265656e73686f74732f313235343433392f666f726d2d616e696d6174696f6e2d5f6769665f2e676966)

## Install

[Compiled module download](be.k0suke.tijvfloatlabeledtextfield-iphone-0.1.zip)

## Usage

You can see screenshot's example at [example/app.js](example/app.js).

```javascript
var TiJVFloatLabeledTextField = require('be.k0suke.tijvfloatlabeledtextfield');
var titlefield = TiJVFloatLabeledTextField.createTextField({
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

var textarea = TiJVFloatLabeledTextField.createTextArea({
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
```

### Properties

Compatible Ti.UI.TextField, Ti.UI.TextArea.

* value
* color
* font
* clearButtonMode
* clearOnEdit
* textAlign
* returnKeyType
* enableReturnKey
* keyboardType
* autocorrect
* autocapitalization
* passwordMask
* hintText
* hintFont
* hintColor
* activeHintColor
* paddingLeft / TextField only
* paddingRight / TextField only

### Events

Compatible Ti.UI.TextField, Ti.UI.TextArea.

* blur
* change
* focus
* return

## Credits

[JVFloatLabeledTextField](https://github.com/jverdi/JVFloatLabeledTextField) by [@jverdi](http://www.twitter.com/jverdi)

## License

The MIT License (MIT) Copyright (c) 2014 Kosuke Isobe