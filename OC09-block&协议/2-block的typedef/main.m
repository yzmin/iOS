//
//  main.m
//  2-block的typedef
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //定义一个block变量，并且赋值
        void (^myBlock)() = ^
        {
            NSLog(@"Hello world");
        };
        myBlock();
        //定义一个别名
        //给 没有返回值，没有参数的block起一个别名
        //Block是一个类型，不再是一个单纯的变量了
        typedef void (^Block)();
        //block类型的变量
        Block b1;
        b1 = ^{
            NSLog(@"Hello world");
        };
        b1();
        
        //练习定义多个NewType类型
        //NewType1 1n;
        
        
        //定义有参数有返回值的 block
        //定义新的别名
        //返回值为int ,有两个 int 类型的参数
        typedef int (^NewType1)(int,int);
        NewType1 nt1 = ^(int a,int b)
        {
            return a + b;
        };
        int s = nt1(12,10);
        NSLog(@"s = %d",s);
        
    }
    return 0;
}
