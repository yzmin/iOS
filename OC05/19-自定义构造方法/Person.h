//
//  Person.h
//  OC05
//
//  Created by yezhimin on 15/10/18.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
//增强的
@property int age;
@property NSString *name;
//自定义的构造方法
-(instancetype)initWith:(NSString *)name andAge:(int)age;
@end
