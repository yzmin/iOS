//
//  Person.m
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"

@implementation Person
//监控Person对象有没有被释放
- (void)dealloc
{
    [_car release];//_car 和 car是同一块内存空间 car = 0
     NSLog(@"Person 没了");
    [super dealloc];
}

-(void)driver
{
    //凤姐开车，车跑
    //_car 野指针
    [_car run];  //[nil run]
}
@end
