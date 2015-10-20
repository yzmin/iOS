//
//  main.m
//  6-单个对象内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
//避免僵尸对象造成的错误
void test()
{
    Car *car = [[Car alloc]init];   //1
    NSLog(@"%ld",car.retainCount);//点语法
    
    [car release];//0
    car = nil;//给car 对象赋值，赋值空
    NSLog(@"%ld",car.retainCount);//点语法

}

//单对象的内存泄漏
//retain 和 release 的个数不匹配
void test2()
{
    //1、单对象内存管理：内存泄漏问题
    //1）retain 和 release 不匹配问题
    
    Car *car = [[Car alloc] init];  //1
    [car retain];   //2
    [car retain];   //3
    [car retain];   //4
    
    [car release];  //release 让 retainCount - 1 = 3
    //        [car release];  //2
    //        [car release];  //1
    //        [car release];  //0
    
    car = nil;
    NSLog(@"%ld",car.retainCount);//点语法
}

//对象在使用的过程中，被赋值了nil，导致内存泄漏
void test3()
{
    //2）对象使用的过程中赋值了nil
    Car *car = [[Car alloc] init];  //1
    [car retain];   //2
    [car retain];   //3
    
    car = nil; //car 指向了 nil
    
    //释放对象的空间
    [car release];  // [nil release];
    [car release];
    [car release];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //1、单对象内存管理：内存泄漏问题
        //1）retain 和 release 不匹配问题
        //2）对象使用的过程中赋值了nil
        
        //3）在方法中不当使用了 retain
        Car *car = [[Car alloc] init];  //1
        
        [car start:car];  // car 2
        
        [car release];  //car 1
        [car release];  //car 1
        
        car = nil;
        NSLog(@"%ld",car.retainCount);//点语法
        
    }
    return 0;
}
