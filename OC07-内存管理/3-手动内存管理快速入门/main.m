//
//  main.m
//  3-手动内存管理快速入门
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
 OC项目创建完成后，默认的是ARC机制
 我们需要关闭ARC，使得项目编程手动内存管理（MRC）
 
 1、如何关闭ARC
 选择项目 ---> build setting ---> basic level ---> 搜索 auto 
 
 2、判断对象是否需要回收
    retainCount
    使用引用计数器 > 0 不会回收
                = 0 开始回收内存空间，回收空间的时候会有一个释放方法 dealloc
 3、重写dealloc 方法
    注意：
        在dealloc方法中必须调用 ［super dealloc］在代码块最后调用
 
 4、让引用计数变化
    1）使用 release 可以让引用计数 －1
    2）使用 retain 可以让引用计数 ＋1
 
 5、内存管理
    一般情况下，对象的引用计数要进行“平衡”
    retain + new  = release 次数
       1   ＋  1  ＝   2
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建一个对象
        //Person *p = [Person new];
        Person *p = [[Person alloc] init]; //创建对象完成后 引用计数器 为 1
        [p run];
        NSLog(@"p retainCount = %tu",[p retainCount]);
        //看下p 有没有回收
        [p retain];                                       //2
        //如果想回收，应该让 retainCount == 0
        [p release];//release 会让引用计数器retainCount -1  //1
        
        NSLog(@"p retainCount = %tu",[p retainCount]);
        [p release];                                      //0
        
    }
    return 0;
}
