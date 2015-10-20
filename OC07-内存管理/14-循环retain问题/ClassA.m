//
//  ClassA.m
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "ClassA.h"
#import "ClassB.h"

@implementation ClassA
- (void)dealloc
{
    NSLog(@"Class A 已经被释放了");
    [_b release];
    [super dealloc];
}
@end
