//
//  main.m
//  3-self用在对象方法中
//
//  Created by yezhimin on 15/10/16.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

/*
 1)self 用在对象方法中
    self用在对象方法中，指代的是调用当前方法的那个对象
 
 */

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *bigBen = [Car new];
        NSLog(@"bigBen = %@, addr = %p",bigBen,bigBen);
        [bigBen run];
    }
    return 0;
}
