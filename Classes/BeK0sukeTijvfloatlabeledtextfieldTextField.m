/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2014年 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "BeK0sukeTijvfloatlabeledtextfieldTextField.h"
#import "BeK0sukeTijvfloatlabeledtextfieldTextFieldProxy.h"
#import "JVFloatLabeledTextField.h"

@implementation BeK0sukeTijvfloatlabeledtextfieldTextField

-(void)initializeState
{
    [super initializeState];
    
    if (self)
    {
        JVFloatLabeledTextField *textfield = [[JVFloatLabeledTextField alloc] initWithFrame:CGRectZero];
        textfield.delegate = self;
        [self addSubview:textfield];
        
        WARN_IF_BACKGROUND_THREAD_OBJ;
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(textFieldDidChange:)
                                                     name:UITextFieldTextDidChangeNotification
                                                   object:textfield];
    }
}

-(void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    JVFloatLabeledTextField *tf = [[self subviews] objectAtIndex:0];
    [TiUtils setView:tf positionRect:bounds];
    
    [super frameSizeChanged:frame bounds:bounds];
}

-(void)dealloc
{
    WARN_IF_BACKGROUND_THREAD_OBJ;
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UITextFieldTextDidChangeNotification
                                                  object:nil];
    
    [super dealloc];
}

-(void)setValue_:(id)args
{
    JVFloatLabeledTextField *tf = [[self subviews] objectAtIndex:0];
    [tf setText:[TiUtils stringValue:args]];
    
    [(BeK0sukeTijvfloatlabeledtextfieldTextFieldProxy*)[self proxy] noteValueChange:[TiUtils stringValue:args]];
}

-(void)setColor_:(id)args
{
    JVFloatLabeledTextField *tf = [[self subviews] objectAtIndex:0];
    [tf setTextColor:[[TiUtils colorValue:args] _color]];
}

-(void)setFont_:(id)args
{
    JVFloatLabeledTextField *tf = [[self subviews] objectAtIndex:0];
    [tf setFont:[[TiUtils fontValue:args] font]];
}

-(void)setClearButtonMode_:(id)args
{
    JVFloatLabeledTextField *tf = [[self subviews] objectAtIndex:0];
    [tf setClearButtonMode:[TiUtils intValue:args]];
}

-(void)setClearOnEdit_:(id)args
{
    JVFloatLabeledTextField *tf = [[self subviews] objectAtIndex:0];
    [tf setClearsOnBeginEditing:[TiUtils boolValue:args]];
}

-(void)setTextAlign_:(id)args
{
    JVFloatLabeledTextField *tf = [[self subviews] objectAtIndex:0];
    [tf setTextAlignment:[TiUtils textAlignmentValue:args]];
}

-(void)setReturnKeyType_:(id)args
{
    JVFloatLabeledTextField *tf = [[self subviews] objectAtIndex:0];
    [tf setReturnKeyType:[TiUtils intValue:args]];
}

-(void)setEnableReturnKey_:(id)args
{
    JVFloatLabeledTextField *tf = [[self subviews] objectAtIndex:0];
    [tf setEnablesReturnKeyAutomatically:[TiUtils boolValue:args]];
}

-(void)setKeyboardType_:(id)args
{
    JVFloatLabeledTextField *tf = [[self subviews] objectAtIndex:0];
    [tf setKeyboardType:[TiUtils intValue:args]];
}

-(void)setAutocorrect_:(id)args
{
    JVFloatLabeledTextField *tf = [[self subviews] objectAtIndex:0];
    [tf setAutocorrectionType:[TiUtils boolValue:args] ? UITextAutocorrectionTypeYes : UITextAutocorrectionTypeNo];
}

-(void)setAutocapitalization_:(id)args
{
    JVFloatLabeledTextField *tf = [[self subviews] objectAtIndex:0];
    [tf setAutocapitalizationType:[TiUtils intValue:args]];
}

-(void)setPasswordMask_:(id)args
{
    JVFloatLabeledTextField *tf = [[self subviews] objectAtIndex:0];
    [tf setSecureTextEntry:[TiUtils boolValue:args]];
}

-(void)setHintText_:(id)args
{
    JVFloatLabeledTextField *tf = [[self subviews] objectAtIndex:0];
    [tf setPlaceholder:[TiUtils stringValue:args]];
}

-(void)setHintFont_:(id)args
{
    JVFloatLabeledTextField *tf = [[self subviews] objectAtIndex:0];
    [tf setFloatingLabelFont:[[TiUtils fontValue:args] font]];
}

-(void)setHintColor_:(id)args
{
    JVFloatLabeledTextField *tf = [[self subviews] objectAtIndex:0];
    [tf setFloatingLabelTextColor:[[TiUtils colorValue:args] color]];
}

-(void)setActiveHintColor_:(id)args
{
    JVFloatLabeledTextField *tf = [[self subviews] objectAtIndex:0];
    [tf setFloatingLabelActiveTextColor:[[TiUtils colorValue:args] color]];
}

-(void)textFieldDidChange:(NSNotification *)notification
{
    JVFloatLabeledTextField *tf = [[self subviews] objectAtIndex:0];
    [(BeK0sukeTijvfloatlabeledtextfieldTextFieldProxy*)[self proxy] noteValueChange:[tf text]];
}

-(BOOL)textFieldShouldReturn:(UITextField *)tf
{
    if ([[self proxy] _hasListeners:@"return"])
    {
        [[self proxy] fireEvent:@"return"
                   withObject:[NSDictionary dictionaryWithObject:[tf text] forKey:@"value"]];
    }
    
    
    if ([TiUtils boolValue:[self.proxy valueForKey:@"suppressReturn"] def:YES])
    {
        [tf resignFirstResponder];
        return NO;
    }
    
    return YES;
}

@end
