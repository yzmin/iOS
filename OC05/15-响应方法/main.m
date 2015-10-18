//
//  main.m
//  15-响应方法
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *dog = [Dog new];
        //动态类型检测是否能够响应 run消息
        SEL s1 = @selector(run);
        //把带有参数的 eat方法，封装成了SEL
        s1 = @selector(eat:);//括号中是方法名
        s1 = @selector(eat:andDogName:);
        
        if([dog respondsToSelector:s1])
        {
            // [dog run]; 等价于 [dog performSelector:s1];
            
            //performSelector 响应无参的方法
            //[dog performSelector:s1];//狗在跑
            
            //performSelector withObject: 响应一个参数的方法
            //[dog performSelector:s1 withObject:@"玉米"];
            
            //performSelector withObject: withObject:
            [dog performSelector:s1 withObject:@"黑皮" withObject:@"玉米"];
        }
       
    }
    return 0;
}
