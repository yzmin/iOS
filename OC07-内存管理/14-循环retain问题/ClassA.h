//
//  ClassA.h
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ClassB;

@interface ClassA : NSObject
@property (nonatomic,retain) ClassB *b;
@end
