//
//  Person.h
//  OC04
//
//  Created by yezhimin on 15/10/16.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    //规范：实例变量名称一般要以下划线开头
    int age;
}
-(void)setAge:(int)age;
-(int)age;
@end
