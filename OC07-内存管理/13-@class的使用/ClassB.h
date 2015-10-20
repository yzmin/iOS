//
//  ClassB.h
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "ClassA.h"
@class ClassA;
@interface ClassB : NSObject
//设定 B类中有A类的对象
{
    ClassA *_a;
}
@end
