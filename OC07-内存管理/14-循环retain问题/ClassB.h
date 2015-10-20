//
//  ClassB.h
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ClassA;

@interface ClassB : NSObject
//直接赋值 _a = a
@property (nonatomic,assign) ClassA *a;
@end
