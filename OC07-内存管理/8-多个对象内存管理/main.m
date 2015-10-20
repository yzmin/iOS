//
//  main.m
//  8-多个对象内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建一个车的对象
        Car *car = [[Car alloc] init];
        //创建一个Person对象
        Person *p = [[Person alloc] init]; // p 1
        p.car = car;  //car 2
        
        [p driver];
        
        [car release]; //car 1
        
        [p driver]; //[_car run];
        
        [p release];//p 引用计数器变成 0
                    //p 对象的dealloc方法会自动调用
    }
    return 0;
}
