//
//  main.m
//  15-NSString 类的内存管理问题
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = [[NSString alloc] initWithString:@"ABC"];
        NSLog(@"str retainCount = %tu",str.retainCount);
        [str release];
        NSLog(@"str retainCount = %tu",str.retainCount);
        str = @"1234";
        NSLog(@"str retainCount = %tu",str.retainCount);
    }
    return 0;
}
