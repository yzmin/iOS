//
//  main.m
//  7-block使用技巧及注意
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

void test(int (^block)(int x,int y))
{
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //block 的使用注意技巧
        //助记符
        //inlineBlock
        void (^block)() = ^() {
            NSLog(@"xxxxxxx");
        };
        block();
        
        //我们在定义block变量的时候，形参类型及个数，这个位置处可以加上形参名称
        //注意，此处当作为方法的参数的时候，此处需要写方法的返回值类型。
        test(^int(int x, int y) {
            return x + y;
        });
        
        
        
    }
    return 0;
}
