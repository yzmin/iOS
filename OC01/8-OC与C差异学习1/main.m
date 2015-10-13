//
//  main.m
//  8-OC与C差异学习1
//
//  Created by yezhimin on 15/10/13.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

/*
 1、源文件的对比
 
 2、数据类型的对比
 
 3、关键字的对比
 
 4、流程控制语句的对比
 for(int i = 0; i < 10; i++)
 {
    NSLog(@"奔跑吧，小毛驴");
 }
 
 增强for循环的格式
 for(数据类型 ＊指针 in 数组／字典）
 {
 }
 NSArray OC中的数组
 
 5、OC中方法和C语言函数对比
 C函数
 int sum(int a,int b)
 {
    return a+b;
 }
 OC中不叫函数，叫方法
 -(void)test;//对象方法
 +(void)test;//类方法
 
 －(int)sum:(int)a andB:(int)b
 {
    return a+b;
 }
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        for(int i = 0; i < 10; i++)
//        {
//            NSLog(@"奔跑吧，小毛驴");
//        }
        NSArray *arr = @[@"小白",@"小棚改",@"百合"];
        for(NSString *str in arr)
        {
            NSLog(@"str = %@",str);
        }
    }
    return 0;
}
