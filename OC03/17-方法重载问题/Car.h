//
//  Car.h
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
//定义一个方法
//重载的定义：在类中允许同名的方法存在，但是方法的参数个数和类型一定不能一样
-(void)test:(int)num;  //方法名：test:
//OC中严格意义上说没有方法重载概念
//-(void)test:(float)num;
-(void)test; //方法名: test

-(void)test:(int)num :(int)num2; //方法名：test : :
@end
