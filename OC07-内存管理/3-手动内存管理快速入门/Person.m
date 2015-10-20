//
//  Person.m
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)run
{
    NSLog(@"人在走");
}
- (void)dealloc
{
    NSLog(@"Person 挂了");
    //调用父类的dealloc
    [super dealloc];
}
@end
