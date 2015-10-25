//
//  main.m
//  11-protocol中@required和@optional
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *d = [Dog new];
        [d eat];
        [d run];
        [d dajia];
    }
    return 0;
}
