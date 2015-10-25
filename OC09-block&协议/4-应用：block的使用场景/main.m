//
//  main.m
//  4-应用：block的使用场景
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

//block 类型的变量 workBlock
//作为函数的参数
void work(void (^workBlock)())
{
    NSLog(@"起床");
    NSLog(@"刷牙");
    NSLog(@"去车站");
    NSLog(@"坐车");
    
    //NSLog(@"了解项目");//把这句话作为参数传递过来
    workBlock();
    
    NSLog(@"去车站");
    NSLog(@"坐车回家");
    NSLog(@"睡觉");
}
//每天做的事
void workDay(int n)
{
    //定义别名
    typedef void (^workBlock)();
    workBlock w;
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
            w = ^{NSLog(@"离职");};
            break;
    }
    work(w);
}

//void day1()
//{
//    NSLog(@"起床");
//    NSLog(@"刷牙");
//    NSLog(@"去车站");
//    NSLog(@"坐车");
//    
//    NSLog(@"了解项目");
//    
//    NSLog(@"去车站");
//    NSLog(@"坐车回家");
//    NSLog(@"睡觉");
//}
//
//void day2()
//{
//    NSLog(@"起床");
//    NSLog(@"刷牙");
//    NSLog(@"去车站");
//    NSLog(@"坐车");
//    
//    NSLog(@"分析项目");
//    
//    NSLog(@"去车站");
//    NSLog(@"坐车回家");
//    NSLog(@"睡觉");
//}
//
//void day3()
//{
//    NSLog(@"起床");
//    NSLog(@"刷牙");
//    NSLog(@"去车站");
//    NSLog(@"坐车");
//    
//    NSLog(@"写代码");
//    
//    NSLog(@"去车站");
//    NSLog(@"坐车回家");
//    NSLog(@"睡觉");
//}
//
//
//void day4()
//{
//    NSLog(@"起床");
//    NSLog(@"刷牙");
//    NSLog(@"去车站");
//    NSLog(@"坐车");
//    
//    NSLog(@"调试程序");
//    
//    NSLog(@"去车站");
//    NSLog(@"坐车回家");
//    NSLog(@"睡觉");
//}
//
//
//void day5()
//{
//    NSLog(@"起床");
//    NSLog(@"刷牙");
//    NSLog(@"去车站");
//    NSLog(@"坐车");
//    
//    NSLog(@"离职");
//    
//    NSLog(@"去车站");
//    NSLog(@"坐车回家");
//    NSLog(@"睡觉");
//}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        day1();
//        day2();
//        day3();
//        day4();
//        day5();
        for(int i = 1;i <= 5;i++)
            workDay(i);
    }
    return 0;
}
