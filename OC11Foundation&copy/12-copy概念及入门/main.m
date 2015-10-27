//
//  main.m
//  12-copy概念及入门
//
//  Created by yezhimin on 15/10/27.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog * d = [Dog new];
        
        //d 拷贝一份 给byd
        Dog *byd = [d copy];
    }
    return 0;
}
