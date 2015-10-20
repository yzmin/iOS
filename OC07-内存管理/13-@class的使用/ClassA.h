//
//  ClassA.h
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "ClassB.h"

@class ClassB;
@interface ClassA : NSObject
//设定 A类中有B类的对象
{
    ClassB *_b;
}
@end
