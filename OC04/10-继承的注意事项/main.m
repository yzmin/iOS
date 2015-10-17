//
//  main.m
//  10-继承的注意事项
//
//  Created by yezhimin on 15/10/16.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BigYellowDog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BigYellowDog *byd = [BigYellowDog new];
        //先调用当前类的方法，如果没有则往上查找
        [byd eat];
        
    }
    return 0;
}
