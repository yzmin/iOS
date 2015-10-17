//
//  main.m
//  2-self和super关键字介绍
//
//  Created by yezhimin on 15/10/16.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *bigBen = [Car new];
        [bigBen run:bigBen];
    }
    return 0;
}
