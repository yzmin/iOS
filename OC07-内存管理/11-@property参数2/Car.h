//
//  Car.h
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
//@property 读写
//1）readwrite  帮我们生成get 和 set 方法
//2）readonly    只是生成get方法
@property (nonatomic,readwrite) int lunzi;//_lunzi
@property (nonatomic,readonly) int speed;//_speed

//3）get和set方法的补充
//@property int age;
//-(void)setAge:(int)age;   ---> p.age = 10;   ==>  [p setAge:20];
//-(int)age;             ---->p.age

@property (nonatomic,setter=setColor:,getter=color) int age;
/*
 -(void)setColor:(int)color;
 -(void)setColor:(int)color
 {
    _age = age;
 }
 -(int)color
 {
    return _age;
 }
 */
@property (nonatomic,setter = iSSuccess:,getter = success) int success;

-(void)run;
@end
