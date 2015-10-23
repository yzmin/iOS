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
    //_car 和 car是同一块内存空间 car = 0
     NSLog(@"Person 没了");
}

-(void)setCar:(Car *)car
{
    //相等没有必要重新赋值
    //car car1
    //_car car1  //car1 = 1
    
    //_car 和 car 相等 表示用set方法多次set了同一个对象
    //此时不需要 release 然后再retain
    
    //_car 和 car 不相等，表示用set方法多次设置了不同的对象
    //先把原对象release
    //然后再让新的对象retain 之后在赋值
    //第一次调用set方法
    //_car nil
    //car car1
    if(_car != car)
    {
        //[nil release];
        //car1 的内存空间就释放了
        //car = 2
        //赋值前
        //_car  -->car1
        //car  -->car2
        
        _car = car;
        
        //赋值后
        //_car  -->car2
        //car  -->car2
    }
    
}

-(void)driver
{
    //凤姐开车，车跑
    //_car 野指针
    [_car run];  //[nil run]
}
@end
