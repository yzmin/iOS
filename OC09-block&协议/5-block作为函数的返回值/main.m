//
//  main.m
//  5-block作为函数的返回值
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

//返回值是block类型的
//void (^block)();
//定义新的block类型
//1)使用 typedef 定义一个新的类型
typedef void (^newType)();

//block类型作为函数的返回值
//2）用新定义的类型作为函数的返回值
newType test()
{
    //定义block变量
    newType w1 = ^
    {
        NSLog(@"xxxxxxx");
        NSLog(@"hello world");
    };
    return w1;//返回值block
}

//重新定义了一个新的类型 newType2
typedef int(^newType2)(int,int);
newType2 test2()
{
    //返回一个特殊的值，这个值是一个有返回值的带参数的代码块
    return ^(int a,int b)
    {
        return  a + b;
    };
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //定义block类型的变量
        //3）定义block变量接收，函数返回
        newType n1 = test();
        //4）执行block
        n1();
        
        newType2 n2 = test2();
        int s = n2(12,23);
        NSLog(@"n2 = %d",s);
    }
    return 0;
}
