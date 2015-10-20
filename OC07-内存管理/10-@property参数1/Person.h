//
//  Person.h
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

@interface Person : NSObject
//set方法实现
//先判断，release,retain
@property (nonatomic,retain) Car *car;
//直接赋值
//@property (nonatomic,assign) Car *car;
//多个对象之间如果直接赋值的话
/*
 Person *p = [Person new];
 Car *car1 = [Car new];
 [p setCar:car1];  ---->  _car = car;
 [p driver];
 
 [car release];
 [p driver];//野指针
 [p release];
 */
//凤姐开车driver
-(void)driver;
@end
