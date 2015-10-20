//
//  main.m
//  4-单个对象的内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //如果对象被释放了，此时能不能继续使用对象
        Person *p = [Person new]; //retainCount = 1
        
        [p run];
        
        //谁创建谁释放
        [p release];
        //当 p 被release 之后，p 就是一个野指针了
        //
        
        //应该让程序出错，操作了野指针
        //如何让程序报错
        //启动僵尸对象检查
        //Edit Scheme  -> Diagnostics -> Enable Zombie Object
        //[p run];//能运行吗？能，但有问题
        
        //不能让僵尸对象复活
        //[p retain]; //错误的
    }
    return 0;
}
