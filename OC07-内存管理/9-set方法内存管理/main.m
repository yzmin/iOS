//
//  main.m
//  9-set方法内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
 set方法内存管理问题
 1）当set不同的对象的时候，引起的内存泄漏
 */
#import <Foundation/Foundation.h>
#import "Person.h"
void test()
{
    //创建Person实例对象
    Person *p = [Person new];  // p = 1
    //创建一个car对象
    Car *car1 = [Car new];  // car1 = 1
    car1.speed = 100;
    //人有车
    p.car = car1; //car1 = 2
    
    [p driver];
    
    [car1 release]; //car1 = 1 //造成内存泄漏
    //创建一个新的对象
    Car *car2 = [Car new]; //car2 = 1
    car2.speed = 200;
    //有没有错误   没有错
    //有没有内存泄漏  有
    //car1 被释放了
    p.car = car2;  //car2 = 2;
    [p driver];
    [car2 release]; //car2 = 1
    
    [p release]; //car2 = 0
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建Person实例对象
        Person *p = [Person new];  // p = 1
        //创建一个car对象
        Car *car1 = [Car new];  // car1 = 1
        p.car = car1;
        car1.speed = 100;
        [p driver];
        [car1 release];
        
        //人有车
        car1.speed = 200;
        p.car = car1; //car1 = 2
        
        [p driver];
        //会不会报错
        //会不会泄漏
        [p release]; //car2 = 0

    }
    return 0;
}

