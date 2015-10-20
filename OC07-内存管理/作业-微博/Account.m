//
//  Account.m
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Account.h"

@implementation Account
- (void)dealloc
{
    [_accountName release];
    [_accountPassCode release];
    [_registrationDate release];
    [super dealloc];
}
@end
