//
//  main.m
//  6-类方法应用场景
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iPhone.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *name = [iPhone getPhoneColor:kColorTHJ];
        NSLog(@"name = %@",name);
    }
    return 0;
}
