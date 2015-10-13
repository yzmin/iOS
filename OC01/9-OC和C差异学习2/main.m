//
//  main.m
//  9-OC和C差异学习2
//
//  Created by yezhimin on 15/10/13.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 1、新增的数据类型
 Boolean 用于存储逻辑值的数据类型
 
 true 真 1
 false 假 0
 
 BOOL 用于存储逻辑值的数据类型
 YES 1
 NO  0
 
 
 2、异常捕捉
 
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Boolean flag = true;
        flag = false;
        
        NSLog(@"flag = %d",flag);
        
        if(flag)
        {
            NSLog(@"aaa");
        }
        
        BOOL flag2 = YES;
        flag2 = NO;
        
        NSLog(@"flag2 = %d",flag2);
        
        if(flag2)
        {
            NSLog(@"gggggg");
        }
        
        //2、异常捕捉
        int a = 1;
        
        @try
        {
            //将要出错的代码
            int b = a / 0;
        }
        @catch(NSException *exception)
        {
            //处理异常的代码
        }
        @finally
        {
            //无论是否出错，都会运行的代码
        }
    }
    return 0;
}
