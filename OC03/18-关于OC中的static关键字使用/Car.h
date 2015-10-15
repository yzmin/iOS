//
//  Car.h
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

//static 修饰局部和全局、函数
//static 能修饰实例变量吗？不能
//static 能修饰局部变量吗？能 和C语言一样
//static 能修饰全局变量吗？能
//static 能够修饰方法？ 不能
#import <Foundation/Foundation.h>



@interface Car : NSObject
{
    //误区:static 不能修饰实例变量
     int _speed;
}
-(void)run;
//误区：不能修饰方法
//static -(void)getNum;
-(void)getNum;
@end
