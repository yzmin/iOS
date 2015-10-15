//
//  main.m
//  2-类方法学习引入
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
 第一种方式：
    类：Caculator
    属性：num1 num2
    四个方法：
        add sub mul dive
 */

#import <Foundation/Foundation.h>
#import "Caculator.h"
#import "Caculator2.h"

void test()
{
    Caculator *cal = [Caculator new];
    cal->_num1 = 10;
    cal->_num2 = 3;
    
    //调用方法
    //消息机制：[cal add]封装成SEL对象，传给类对象，然后匹配SEL，调用函数。
    [cal sub];
    NSLog(@"result = %.2f",cal->_result);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Caculator2 *cal2 = [Caculator2 new];
        //调用对像方法
        int ret = [cal2 add:10 andNum2:30];
        //对ret变量，重新赋值
        ret = [cal2 sub:30 andNum2:12];
        
        ret = [cal2 mul:10 andNum2:20];
        
        float r = [cal2 div:20 andNum2:3];
        
        NSLog(@"ret = %d",ret);
        NSLog(@"ret = %d",r);
        
        //以上两种方法相同点：
        //1）都定义了对象方法
        //2）要调用方法，首先要先创建对象
        
        //Caculator
        //1）创建3个实例变量
    }
    return 0;
}
