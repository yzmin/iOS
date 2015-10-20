//
//  Person.m
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"
#import "Dog.h" //引入头文件

@implementation Person
- (void)dealloc
{
    NSLog(@"person 已经被销毁");
    [_dog release];
    [super dealloc];
}
@end
