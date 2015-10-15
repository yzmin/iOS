//
//  main.m
//  7-匿名对象的概念及使用
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Car *car = [Car new];
//        [car run];
//        car->_speed = 250;
//        NSLog(@"_speed = %d",car->_speed);
        //匿名对象
        //匿名对象的使用
        //1）可以访问实例变量
        //注意：使用匿名对象访问实例变量，只能正确使用一次
        [Car new]->_speed = 180;
        NSLog(@"_speed = %d",[Car new]->_speed);// [Car new];又分配了新的内存空间
        //2）可以调用方法
        [[Car new] run];
        //申请空间，并且初始化
        Car *bigBen = [[Car alloc] init];
        //注意：alloc init 等价于 new 
    }
    return 0;
}
