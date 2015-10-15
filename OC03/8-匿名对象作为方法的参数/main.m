//
//  main.m
//  8-匿名对象作为方法的参数
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
 人要开车回家
 人
    -(void)getHome:(Car *)car;
 车
    -(void)run;
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Car *bigBen = [Car new];
//        Person *p = [Person new];
//        [p goHome:bigBen];
//        [p goHome:[Car new]];
        //匿名对象实例化后，只能正确的使用成员变量一次
        [[Person new] goHome:[Car new]];//代码可读性差
        //alloc 和 init 分别把内存分配和初始化分开，比较灵活
        
    }
    return 0;
}
