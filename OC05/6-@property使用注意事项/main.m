//
//  main.m
//  6-@property使用注意事项
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *heipi = [Dog new];
        heipi.tuiNum = 10;
        NSLog(@"tuiNum = %d",heipi.tuiNum);
    }
    return 0;
}
