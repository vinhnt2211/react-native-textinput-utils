//
//  RCTTextFieldExtension.m
//  RCTKeyboardToolbar
//
//  Created by Kanzaki Mirai on 11/10/15.
//  Copyright © 2015 DickyT. All rights reserved.
//

#import "RCTTextFieldExtension.h"

@implementation RCTTextField (RCTTextFieldExtension)

- (void)setSelectedRange:(NSRange)range
{
    UITextPosition* beginning = self.textField.beginningOfDocument;
    UITextPosition* startPosition = [self.textField positionFromPosition:beginning offset:range.location];
    UITextPosition* endPosition = [self.textField positionFromPosition:beginning offset:range.location + range.length];
    UITextRange* selectionRange = [self.textField textRangeFromPosition:startPosition toPosition:endPosition];
    [self.textField setSelectedTextRange:selectionRange];
}

@end
