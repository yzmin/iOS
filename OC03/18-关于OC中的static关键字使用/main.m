//
//  main.m
//  18-关于OC中的static关键字使用
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *car = [[Car alloc] init];
        //[car run];
        [car getNum];
        [car getNum];
        [car getNum];
    }
    return 0;
}
