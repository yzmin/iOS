//
//  main.m
//  19-block作为方法的参数
//
//  Created by yezhimin on 15/10/25.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p test:^{ NSLog(@"xxxxxx"); }];
    }
    return 0;
}
