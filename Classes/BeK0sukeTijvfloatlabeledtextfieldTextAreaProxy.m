/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2014年 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "BeK0sukeTijvfloatlabeledtextfieldTextAreaProxy.h"
#import "TiUtils.h"

@implementation BeK0sukeTijvfloatlabeledtextfieldTextAreaProxy

-(void)blur:(id)args
{
    ENSURE_UI_THREAD_1_ARG(args);
    
    if ([self viewAttached])
    {
        [[[[self view] subviews] objectAtIndex:0] resignFirstResponder];
    }
}

-(void)focus:(id)args
{
    ENSURE_UI_THREAD_1_ARG(args);
    
    if ([self viewAttached])
    {
        [[[[self view] subviews] objectAtIndex:0] becomeFirstResponder];
    }
}

-(void)noteValueChange:(NSString *)args
{
    if (![[self valueForKey:@"value"] isEqual:args])
    {
        [self replaceValue:args forKey:@"value" notification:NO];
        [self contentsWillChange];
        [self fireEvent:@"change"
             withObject:[NSDictionary dictionaryWithObject:args forKey:@"value"]];
    }
}

@end
