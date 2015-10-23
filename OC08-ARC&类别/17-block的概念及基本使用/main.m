//
//  main.m
//  17-block的概念及基本使用
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //有参有返回值
        /*
            格式：
            返回值类型 (^变量名)(参数类型及个数) = ^(行参列表){
                代码块语句;
                return ;
            };
         */
        //定义一个有参数、有返回值的变量
        int (^myblock1)(int,int) = ^(int a,int b){
            return a + b;
        };
        //使用block，来接收返回值
        int sum = myblock1(12,23);
        NSLog(@"sum = %d",sum);
        
        myblock1 = ^(int a,int b)
        {
            return a * b;
        };
        
        //使用block，来接收返回值
        sum = myblock1(10,23);
        NSLog(@"sum = %d",sum);
        
        //有参无返回值
        /*
         格式：
         void (^变量名)(参数类型及个数) = ^(行参列表){
            代码块语句;
         };
         */
        //定义一个变量myblock2 同时进行赋值
        void (^myblock2)(int,int) = ^(int a,int b)
        {
            NSLog(@"a + b = %d",a+b);
        };
        
        myblock2(12,10);
        
        myblock2 = ^(int x,int y){
            int max = x > y ? x : y;
            NSLog(@"max = %d",max);
        };
        
        myblock2(12,10);
        
        //无参有返回值
        
        
        //无参无返回值 block
        
        /*
         //定义一个没有参数、没有返回值的block变量，并且赋值了
         void (^block变量名)() = ^(){
            代码块的语句;
         };
         
         优化：
         void (^block变量名)() = ^{
         代码块的语句;
         };

         //block变量的使用
         block变量名();
         */
        void (^myBlock4)() = ^
        {
            NSLog(@"xxxx");
            printf("xxxxxxxx\n");
        };
        //使用block变量
        myBlock4();
    }
    return 0;
}
