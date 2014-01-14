/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2014年 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "BeK0sukeTijvfloatlabeledtextfieldTextArea.h"
#import "JVFloatLabeledTextView.h"

@implementation BeK0sukeTijvfloatlabeledtextfieldTextArea

-(void)initializeState
{
    [super initializeState];
}

-(void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    if ([[self subviews] count] > 0)
    {
        for (UIView *child in [self subviews])
        {
            [TiUtils setView:child
                positionRect:bounds];
        }
    }
    else
    {
        JVFloatLabeledTextView *textarea = [[JVFloatLabeledTextView alloc] initWithFrame:CGRectZero];
        [textarea setFrame:CGRectMake(bounds.origin.x - textarea.textContainer.lineFragmentPadding,
                                      bounds.origin.y,
                                      bounds.size.width + textarea.textContainer.lineFragmentPadding,
                                      bounds.size.height)];
        [textarea setPlaceholder:[TiUtils stringValue:[self.proxy valueForKey:@"hintText"]]];
        [textarea setFont:[[TiUtils fontValue:[self.proxy valueForKey:@"font"]] font]];
        textarea.floatingLabelYPadding = [TiUtils numberFromObject:[self.proxy valueForKey:@"hintYpadding"]];
        textarea.floatingLabelFont = [[TiUtils fontValue:[self.proxy valueForKey:@"hintFont"]] font];
        textarea.floatingLabelTextColor = [[TiUtils colorValue:[self.proxy valueForKey:@"hintColor"]] color];
        textarea.floatingLabelActiveTextColor = [[TiUtils colorValue:[self.proxy valueForKey:@"hintActiveColor"]] color];
        textarea.delegate = self;
        [self addSubview:textarea];
    }
    
    [super frameSizeChanged:frame bounds:bounds];
}

-(void)dealloc
{
    [super dealloc];
}

@end
