//
//  main.m
//  17-重写构造方法
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
    什么是构造方法?
        构造方法用来给对象进行初始化的方法
    OC中的构造方法
        init方法
    OC中构造方法的特点
        默认的给 基本数据类型的变量 初始化值为0
        默认的给 对象类型 初始化值为nil（值0）
    需求：
        对象创建完成后，必须给一些初始的值，但是不能为0
        比如：游戏角色 金币默认为1000 Level = 1
        Person *p = [Person new];//coin = 0;  level = 0;
    
    重写构造方法目的：
        对象创建完成后，自动有一些默认值。
 
    如何重写构造方法？
        固定的格式：
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"
#import "FaShi.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FaShi *fs = [[FaShi alloc] init];
        
        Person *p = [[Person alloc] init];
        NSLog(@"p.coin = %d, p.level = %d",p.coin,p.level);
        
        NSLog(@"fs.blood = %d,fs.coin = %d,level = %d",fs.blood,fs.coin,fs.level);
        
    }
    return 0;
}
