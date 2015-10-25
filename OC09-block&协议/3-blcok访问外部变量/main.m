//
//  main.m
//  3-blcok访问外部变量
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
//block 内部访问外部的值的问题
//block 内部不允许修改外部变量值
void test()
{
    int m = 10;
    NSLog(@"1 m = %d",m);
    NSLog(@"2 m addr = %p",&m);//栈区
    NSString *str = @"abc";//常量区
    NSLog(@"str = %p",str);
    
    //定义变量并且赋值
    //当定义block的时候，block会把外部变量以const方式复制一份
    //存放到block的所在内存中
    void (^myBlock)() = ^
    {
        //m 的值不能被修改，是const拷贝的
        //m = 100;
        
        NSLog(@"4 in block m addr = %p",&m);//堆区
        //可以访问m的值
        NSLog(@"3 in block m = %d",m);
        
    };
    NSLog(@"5 m addr = %p",&m);//栈区
    //使用
    myBlock();
    //1 2 5 4 3
}
int n = 0;
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        __block int m = 10;
        NSLog(@"1 m addr = %p",&m);//栈区地址
       
        //__block 不在以const的方式拷贝了
        void (^myBlock)() = ^
        {
            m = 100;
            //block内部定义的变量在栈区
            //int m = 100;
            n = 10;
            NSLog(@"4 in block m addr = %p",&m);//堆区
            //可以访问m的值
            NSLog(@"3 in block m = %d",m);
            
        };

        myBlock();
        
        NSLog(@"6 m = %d",m);
        NSLog(@"7 m addr = %p",&m);
    }
    return 0;
}
