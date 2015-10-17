//
//  main.m
//  13-OC中的私有变量
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

/*
    在@implementation xxx
    {
        //私有变量，只能被当前类去访问
    }
 */
#import <Foundation/Foundation.h>
#import "Car.h"
//#import "Car.m"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *car = [Car new];
        [car run];
        [car eat];
        //car->_speed = 100;
        //extern int m;
        //NSLog(@"m =%d",m);
    }
    return 0;
}
