//
//  main.m
//  9-protocol的基本使用
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p eat];
        [p run];
        [p work];
    }
    return 0;
}
