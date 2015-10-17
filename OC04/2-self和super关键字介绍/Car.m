//
//  Car.m
//  OC04
//
//  Created by yezhimin on 15/10/16.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Car.h"

@implementation Car
-(void)run:(Car *)car
{
    _lunNum = 5;
    //调用车的停止的方法
    //stop
    
//    Car *car1 = [Car new];//产生另外一个对象
//    [car1 stop];
    //传对象
//    [car stop];
    
    //self指向当前的对象
    [self stop];
}
-(void)stop
{
    //_lunNum = 5;
    NSLog(@"lunNum = %d",_lunNum);
}
@end
