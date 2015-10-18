//
//  Person.m
//  OC05
//
//  Created by yezhimin on 15/10/18.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"

@implementation Person
-(instancetype)initWith:(NSString *)name andAge:(int)age
{
    //此处写 super init 原因
    //Person *p = [[Person alloc] initWith];
    if(self = [super init])
    {
        //初始化子类的数据
        //用指定的值给实例变量进行初始化
        _name = name;
        _age = age;
    }
    return self;
}
@end
