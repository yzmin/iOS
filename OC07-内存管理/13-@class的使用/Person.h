//
//  Person.h
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Dog.h"

@class Dog;//告诉编译器，Dog是一个类
//这个类到底有哪些方法，属性，此处不知道

@interface Person : NSObject
@property (nonatomic,retain)Dog *dog;

@end
