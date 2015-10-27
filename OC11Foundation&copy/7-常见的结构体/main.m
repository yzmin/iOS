//
//  main.m
//  7-常见的结构体
//
//  Created by yezhimin on 15/10/26.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //CGPoint / NSPoint
        //NSPoint 是 CGPoint 的一个别名
        //用来 表示二维平面的一个点
        //包含两个成员x(点的x方向） y(y方法)
        CGPoint c1;//c1是一个CGPoint 结构体变量
        c1.x = 20;
        c1.y = 100;
        
        CGPoint c2 = {23,100};
        
        CGPoint c3 ={.x = 10};
        
        NSPoint np1;
        np1.x = 100;
        np1.y = 100;
        //OC 中特有的赋值方式
        CGPoint c4 = CGPointMake(12, 23);
        NSPoint np2 = NSMakePoint(5, 3);
        
        //CGSize \ NSSize
        //用来表示平面的面积（大小）
        //width 宽   height 高
        
        CGSize s1;
        s1.width = 200;
        s1.height = 100;
        
        CGSize s2 = {200,100};
        
        CGSize s3 = {.width = 200};
        //OC 中特有的
        CGSize s4 = CGSizeMake(200,100);
        NSSize ns1 = NSMakeSize(200,100);
        
        //CGRect \ NSRect
        //表示在平面上左上角是某个点的矩形区域
        //origin 表示 矩形的左上角的点
        //size   表示 矩形的大小
        CGRect r1;
        //C 语言的赋值方式
        r1.origin.x = 100;
        r1.origin.y = 100;
        r1.size.width = 100;
        r1.size.height = 100;
        
        CGRect r2 = {{100,100},{100,100}};
        //OC 特有的方式
        //CGxxx   CGxxxxMake
        CGRect r3 = CGRectMake(0, 0, 100, 100);
        //NSxxx   NSMakexxxx
        NSRect nr1 = NSMakeRect(0, 0, 100, 100);
        NSLog(@"nr1 = %@",NSStringFromRect(nr1));
        
    }
    return 0;
}
