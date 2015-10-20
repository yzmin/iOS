//
//  Person.m
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)dealloc
{
    NSLog(@"Person 被销毁了");
    [_name release];
    [super dealloc];
}
@end
