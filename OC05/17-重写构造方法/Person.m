//
//  Person.m
//  OC05
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"

@implementation Person
//重写
- (instancetype)init
{
    //1、初始化父类
    //疑问1：为什么要初始化父类的？
    //子类继承了父类
    //当子类重写了父类的方法以后，子类调用init方法的时候
    //只调用子类的init，不调用父类的init
    //为了保证父类正常的初始化完成，子类先让父类初始化
    
    //self = [super init];//初始化父类
    
    //疑问2:为什么要给self 重新赋值
    //1）父类初始化的时候，有可能release self指向的空间（可能性比较小，如果释放了空间了 self ＝ nil）
    //  问题：父类进行初始化怎么能够释放掉 self指向的空间
    //       父类中的self 和子类中的 self 指向的是同一个空间
    
    //2、判断父类有没有初始化成功
    //self != nil 初始化成功
    if(self = [super init])
    {
        //初始化子类自己的东西
        _coin = 1000;
        _level = 1;
    }
    //3、返回self －－》alloc完成的那个对象
    return self;
}

@end
