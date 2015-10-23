//
//  Car.h
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
@property int speed;
//1）生成get和set方法的声明
//2）生成get和set方法的实现
//3）帮我们创建一个私有的实例变量

-(void)run;
@end
