//
//  main.m
//  4-点语法使用注意事项
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *bigBen = [Car new];
        bigBen.speed = 380;
        NSLog(@"speed = %d",bigBen.speed);
    }
    return 0;
}
