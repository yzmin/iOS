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
{
    Car *_car;//实例变量
    //_car 和 p 关联关系
}
//_car 的set 方法
-(void)setCar:(Car *)car;
//凤姐开车driver
-(void)driver;
@end
