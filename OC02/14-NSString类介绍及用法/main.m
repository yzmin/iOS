//
//  main.m
//  14-NSString类介绍及用法
//
//  Created by yezhimin on 15/10/14.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1、创建空字符串
        NSString *s1 = [NSString new];
        s1 = @"小白是一个节操满满的好少年";
        NSLog(@"%@",s1);
        
        //2、常规创建字符串的格式
        NSString *s2 = @"节操碎一地";
        NSLog(@"%@",s2);
        
        //3、输出格式化的字符串
        //stringWithFormat 字符串拼接的方法
        for(int i = 0;i < 10; i++)
        {
             NSString *s3 = [NSString stringWithFormat:@"xxxxx%02d.jpg",i];
            NSLog(@"s3 = %@",s3);
        }
        //4、用一个已经存在的字符串，创建一个新的字符串
        NSString *s4 = [[NSString alloc] initWithString:s1];
        NSLog(@"%@",s4);
        
    }
    return 0;
}
