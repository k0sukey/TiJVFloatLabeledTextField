/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2014年 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "BeK0sukeTijvfloatlabeledtextfieldTextArea.h"
#import "BeK0sukeTijvfloatlabeledtextfieldTextAreaProxy.h"
#import "JVFloatLabeledTextView.h"

@implementation BeK0sukeTijvfloatlabeledtextfieldTextArea

-(void)initializeState
{
    [super initializeState];
    
    if (self)
    {
        JVFloatLabeledTextView *textarea = [[JVFloatLabeledTextView alloc] initWithFrame:CGRectZero];
        textarea.delegate = self;
        [self addSubview:textarea];
    }
}

-(void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    JVFloatLabeledTextView *ta = [[self subviews] objectAtIndex:0];
    [TiUtils setView:ta positionRect:CGRectMake(bounds.origin.x - ta.textContainer.lineFragmentPadding,
                                                bounds.origin.y,
                                                bounds.size.width + ta.textContainer.lineFragmentPadding,
                                                bounds.size.height)];
    
    [super frameSizeChanged:frame bounds:bounds];
}

-(void)dealloc
{
    [super dealloc];
}

-(void)setValue_:(id)args
{
    JVFloatLabeledTextView *ta = [[self subviews] objectAtIndex:0];
    [ta setText:[TiUtils stringValue:args]];
    
    [(BeK0sukeTijvfloatlabeledtextfieldTextAreaProxy*)[self proxy] noteValueChange:[TiUtils stringValue:args]];
}

-(void)setColor_:(id)args
{
    JVFloatLabeledTextView *ta = [[self subviews] objectAtIndex:0];
    [ta setTextColor:[[TiUtils colorValue:args] _color]];
}

-(void)setFont_:(id)args
{
    JVFloatLabeledTextView *ta = [[self subviews] objectAtIndex:0];
    [ta setFont:[[TiUtils fontValue:args] font]];
}

-(void)setTextAlign_:(id)args
{
    JVFloatLabeledTextView *ta = [[self subviews] objectAtIndex:0];
    [ta setTextAlignment:[TiUtils textAlignmentValue:args]];
}

-(void)setReturnKeyType_:(id)args
{
    JVFloatLabeledTextView *ta = [[self subviews] objectAtIndex:0];
    [ta setReturnKeyType:[TiUtils intValue:args]];
}

-(void)setEnableReturnKey_:(id)args
{
    JVFloatLabeledTextView *ta = [[self subviews] objectAtIndex:0];
    [ta setEnablesReturnKeyAutomatically:[TiUtils boolValue:args]];
}

-(void)setKeyboardType_:(id)args
{
    JVFloatLabeledTextView *ta = [[self subviews] objectAtIndex:0];
    [ta setKeyboardType:[TiUtils intValue:args]];
}

-(void)setAutocorrect_:(id)args
{
    JVFloatLabeledTextView *ta = [[self subviews] objectAtIndex:0];
    [ta setAutocorrectionType:[TiUtils boolValue:args] ? UITextAutocorrectionTypeYes : UITextAutocorrectionTypeNo];
}

-(void)setAutocapitalization_:(id)args
{
    JVFloatLabeledTextView *ta = [[self subviews] objectAtIndex:0];
    [ta setAutocapitalizationType:[TiUtils intValue:args]];
}

-(void)setHintText_:(id)args
{
    JVFloatLabeledTextView *ta = [[self subviews] objectAtIndex:0];
    [ta setPlaceholder:[TiUtils stringValue:args]];
}

-(void)setHintFont_:(id)args
{
    JVFloatLabeledTextView *ta = [[self subviews] objectAtIndex:0];
    [ta setFloatingLabelFont:[[TiUtils fontValue:args] font]];
}

-(void)setHintColor_:(id)args
{
    JVFloatLabeledTextView *ta = [[self subviews] objectAtIndex:0];
    [ta setFloatingLabelTextColor:[[TiUtils colorValue:args] color]];
}

-(void)setActiveHintColor_:(id)args
{
    JVFloatLabeledTextView *ta = [[self subviews] objectAtIndex:0];
    [ta setFloatingLabelActiveTextColor:[[TiUtils colorValue:args] color]];
}

-(void)setHintYpadding_:(id)args
{
    JVFloatLabeledTextView *ta = [[self subviews] objectAtIndex:0];
    ta.floatingLabelYPadding = [TiUtils numberFromObject:args];
}

-(void)textViewDidChange:(UITextView *)textview
{
    JVFloatLabeledTextView *ta = [[self subviews] objectAtIndex:0];
    [(BeK0sukeTijvfloatlabeledtextfieldTextAreaProxy*)[self proxy] noteValueChange:[ta text]];
}

@end
