//
//  main.m
//  15-分类（Category）非正式协议
//
//  Created by yezhimin on 15/10/23.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+run.h"
#import "Person.h"
#import "Gun.h"
#import "NSString+conutNum.h"

void test()
{
    Person *p = [Person new];
    [p eat];
    Gun *g = [Gun new];
    [g eat];
    [g run];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"abc123";
        [str conutNumForString];
        NSString *str2 = [NSString stringWithFormat:@"abc45"];
        [str2 conutNumForString];
    }
    return 0;
}
