//
//  Car.m
//  OC04
//
//  Created by yezhimin on 15/10/16.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Car.h"

@implementation Car
-(void)run
{
    _lunNum = 5;
    NSLog(@"run -->  self = %@, addr = %p",self,self);
    //self指向当前的对象
    [self stop];
}
-(void)stop
{
    NSLog(@"lunNum = %d",_lunNum);
}
@end
