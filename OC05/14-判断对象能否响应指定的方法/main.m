//
//  main.m
//  14-判断对象能否响应指定的方法
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

/*
 2、对象能否响应指定的方法（判断对象或者类是否存在某个方法）
    1）对象能否调用指定的方法
        cat 是否能够调用 lookHome方法 //cat 能否响应 lookHome消息
 
    2）类中是否声明了某个方法

 */

#import <Foundation/Foundation.h>
#import "Cat.h"
#import "DOg.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1）对象能否调用指定的方法
        // [对象 respondsToSelector:SEL];
        Animal *cat = [Dog new];
        //把方法转换为 SEL
        SEL s1 = @selector(lookHome);
        //判断cat 能否发送 s1  （cat 能否调用 lookHome）
        BOOL isYes = [cat respondsToSelector:s1];
        
        //2）类中是否声明了某个方法
        // [类对象 instancesRespondToSelector:SEL];
        isYes = [[Cat class] instancesRespondToSelector:s1];
        NSLog(@"isYes = %d",isYes); //0
        
        if(isYes)
        {
            //能响应才调用 lookHome
            [(Dog *)cat lookHome];
        }
        else
        {
            //不能响应，给个提示
            NSLog(@"不能调用此方法");
        }
        
        
        
    }
    return 0;
}
