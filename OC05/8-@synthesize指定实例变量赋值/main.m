//
//  main.m
//  8-@synthesize指定实例变量赋值
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *car = [Car new];
        car.speed = 100;
        NSLog(@"speed = %d",car.speed);
        
        [car test];
    }
    return 0;
}
