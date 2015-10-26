//
//  main.m
//  8-NSMutableString介绍和使用
//
//  Created by yezhimin on 15/10/25.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 10;
        a = 6;
        NSLog(@"a addr = %p",&a);
        //不可变：字符串占用的 空间和 字符串的内容，都不可改变
        //可变：字符串占用的空间和字符串的内容，都可以改变
        NSString *str = @"Jack";//常量区
        NSLog(@"str addr = %p",str);
        str = @"Rose";
        NSLog(@"str addr = %p",str);
        
        //可变的字符串
        NSMutableString *str2 = [NSMutableString stringWithFormat:@"jack"];
        NSLog(@"str2 addr = %p",str2);

        [str2 appendString:@"&Rose"];
        NSLog(@"str2 addr = %p",str2);
        NSLog(@"str2 = %@",str2);
        
        //思考：
        //创建一个可变的空字符串
        NSMutableString *str3 = [NSMutableString string];
        NSLog(@"str3 = %@",str3);
        for(int i = 0; i < 5; ++i)
        {
            [str3 appendString:@"yzmin"];
        }
        NSLog(@"str3 = %@",str3);
    }
    return 0;
}
