//
//  HouseDelegate.m
//  Loan
//
//  Created by JiaLi on 16/8/24.
//  Copyright © 2016年 JiaLi. All rights reserved.
//

#import "HouseDelegate.h"
#import "HouseTextField.h"
@implementation HouseDelegate
- (void)textFieldDidEndEditing:(UITextField *)textField;             // may be called if forced even if shouldEndEditing
{
    HouseTextField* t = (HouseTextField*)textField;
    NSLog(@"text : %@", t.text);
    NSLog(@"row : %d", t.row);
    NSLog(@"index :%d", t.index);

}
- (BOOL)textFieldShouldReturn:(UITextField *)textField;
{
    HouseTextField* t = (HouseTextField*)textField;
    return YES;
}

@end
