//
//  ClassB.m
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "ClassB.h"
#import "ClassA.h"

@implementation ClassB

- (void)dealloc
{
    NSLog(@"Class B 已经被释放了");
    [_a release];
    [super dealloc];
}
@end
