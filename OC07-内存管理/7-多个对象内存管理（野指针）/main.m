//
//  main.m
//  7-多个对象内存管理（野指针）
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

//多个对象的内存管理：野指针
void test()
{
    Person *p = [[Person alloc] init];//创建对象  1
    
    Car *car = [[Car alloc] init];  //1
    p.car = car;
    
    //        [p driver];
    
    //释放对象的内存空间
    [car release];  //0
    [p driver];     //在driver方法中，_car 被释放了
    //_car 是一个野指针
    //不能操作野指针，多会报错
    [p release];

}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];//创建对象  1
        Car *car = [[Car alloc] init];  //1
        p.car = car;//2
        
        //一种看似合理的解决方案
        //p 对象释放之前，不能释放car
        [p driver];
        //此处的作用是 保证 car = 2
//        [car retain];
        
        //释放对象的内存空间
        [car release];  //car = 1
        [p driver]; //如果内存被释放了，此处还会报错  //car >= 1
        [p driver];
        [p driver];
        [p driver];
        [p driver];
        [p driver];
        
        [p release];
        //car 出现内存泄漏
    }
    return 0;
}
