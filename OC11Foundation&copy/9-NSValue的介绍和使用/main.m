//
//  main.m
//  9-NSValue的介绍和使用
//
//  Created by yezhimin on 15/10/26.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

void test()
{
    //创建一个结构体变量，保存点
    //p1 是CGPoint 类型的结构体变量
    CGPoint p1 = CGPointMake(100, 120);
    NSRect r1 = NSMakeRect(0, 0, 100, 100);
    //创建数组
    NSMutableArray *arr = [NSMutableArray array];
    // p1 --> obj
    NSValue *pointVal = [NSValue valueWithPoint:p1];
    [arr addObject:pointVal];
    
    [arr addObject:[NSValue valueWithRect:r1]];
    NSLog(@"arr = %@",arr);
    
    //取出r1的值
    //rectValue 从NSValue对象中，取得NSRect值
    NSValue *r1Val = [arr lastObject];
    CGRect r2 = [r1Val rectValue];
    NSLog(@"%@",NSStringFromRect(r2));

}

typedef struct D
{
    int year;
    int month;
    int day;
}MyDate;//MyDate是一个别名

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //保存 一个 年月日
        //2015-7-5
        MyDate md = {2015,10,26};
        //md --> obj
        //@encode(MyDate) 作用，把MyDate类型生成一个常量字符串描述
        NSValue *mdVal = [NSValue valueWithBytes:&md objCType:@encode(MyDate)];
        //定义数组，把mdVal存放在数组中
        NSMutableArray *arr = [NSMutableArray array];
        [arr addObject:mdVal];
        NSLog(@"%@",arr);
        
        //从数组中取出来NSValue对象
        //从对象中，取出结构体变量的值
        //传入一个结构体变量的地址
        MyDate tmd;
        //getValue获取结构值，保存到结构体tmd变量中
        [mdVal getValue:&tmd];
        NSLog(@"%d,%d,%d",tmd.year,tmd.month,tmd.day);
    }
    return 0;
}
