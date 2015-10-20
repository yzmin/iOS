//
//  User.m
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "User.h"
#import "Account.h"

@implementation User
- (void)dealloc
{
    [_name release];
    [_account release];
    [super dealloc];
}

@end
