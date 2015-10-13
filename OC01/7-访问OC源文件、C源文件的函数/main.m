//
//  main.m
//  7-访问OC源文件、C源文件的函数
//
//  Created by yezhimin on 15/10/13.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "test_oc.h"
#import "test_c.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        test();
        test2();
    }
    return 0;
}
