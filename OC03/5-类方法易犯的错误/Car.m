//
//  Car.m
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Car.h"

@implementation Car

-(void)test:(Car *)car
{
    //对象方法中调用自身对象的其他方法
    [car run];
    //调用其他对象的方法
    Person *p = [Person new];
    [p playLol];
    
    //[self run];
}

-(void)run
{
    NSLog(@"车正在用%d个轮子在疯跑",_lunNum);
    //调用自身类的类方法
//    [Car test];
//    [Person run];//可以调用其他类方法
    //对象方法：
    //把对象作为方法参数传递
    
    //创建对象
    
    //使用self
}
+(void)run:(int)lunNum :(Person *)person
{
    //不能访问成员变量，因为没有实例对象分配内存空间，
    //NSLog(@"车正在用%d个轮子在疯跑",_lunNum);
    NSLog(@"车正在用%d个轮子在疯跑",lunNum);
    //1)能否调用当前类的其他类方法
    //能调用：[类名 类方法名];
    [Car test];
    //2)能否调用其他类的类方法 可以调用
    [Person run];
    
    //playLol
    //1) 创建一个对象
    //Person *p = [Person new];
    //[p playLol];
    //2）传递一个对象
    [person playLol];
}

+(void)test
{
    NSLog(@"Car 的 类方法 test");
    //类方法不可以调用自身，会造成死循环
    [Car test];
}
@end
