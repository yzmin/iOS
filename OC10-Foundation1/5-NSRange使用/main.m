//
//  main.m
//  5-NSRange使用
//
//  Created by yezhimin on 15/10/25.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSRange range;//rang结构体变量
        NSRange *r;// r 结构体指针
        //range 变量的初始化方式
        //1) 通过结构体变量访问成员
        range.location = 3;
        range.length = 2;
        //2) 结构体变量整体赋值
        range = (NSRange){5,3};
        NSRange r2 = {3,4};//最简单的
        
        //3)
        NSRange r3 = {.location = 3};//只给结构体变量中的 .location变量赋值
        
        //4）OC中新增的方法
        /**
         *  NSRange NSMakeRange(NSUInteger loc, NSUInteger len) 
            {
                NSRange r;
                r.location = loc;
                r.length = len;
                return r;
            }
         */
        NSRange r4 = NSMakeRange(3,3);
        
        //查看结构体的变量
        NSLog(@"%ld,%ld",r4.location,r4.length);
        
        //可以把结构体变量转化为 NSString类型
        NSLog(@"%@",NSStringFromRange(r4));
    }
    return 0;
}
