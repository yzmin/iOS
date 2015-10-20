//
//  main.m
//  13-@class的使用
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

/*
 @class的用法
 格式: @class 类名; //告诉编译器，这是个类
 
 @class 用法：
 1）做一个简单的引入   （#import）
 2）循环引入的问题  @class 解决循环引入问题
 
 总结：
 在 .h 中使用@class引入类
 .m 中使用的时候，使用#import 引入过来
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    }
    return 0;
}
