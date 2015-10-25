//
//  main.m
//  6-应用：block的使用场景2
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

//block 类型的变量 workBlock
//作为函数的参数
//给无参无返回值的block起个别名（新的类型）
typedef void(^blockType)();


void work(int n)
{
    NSLog(@"起床");
    NSLog(@"刷牙");
    NSLog(@"去车站");
    NSLog(@"坐车");
    
    //NSLog(@"了解项目");//把这句话作为参数传递过来
    //workBlock();
    //声明一个函数
    blockType workDay(int n);
    blockType w = workDay(n);
    w();
    
    NSLog(@"去车站");
    NSLog(@"坐车回家");
    NSLog(@"睡觉");
}
//每天做的事
blockType workDay(int n)
{
    blockType w;
    switch (n) {
        case 1:
            w = ^{NSLog(@"了解项目");};
            break;
        case 2:
            w = ^{NSLog(@"分析项目");};
            break;
        case 3:
            w = ^{NSLog(@"写项目");};
            break;
        case 4:
            w = ^{NSLog(@"调试项目");};
            break;
        case 5:
            w = ^{NSLog(@"---->离职");};
            break;
    }
    //返回值
    return w;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        for(int i = 1;i <= 5;i++)
            work(i);
    }
    return 0;
}
