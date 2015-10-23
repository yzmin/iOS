//
//  main.m
//  6-ARC快速入门
//
//  Created by yezhimin on 15/10/22.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
    ARC机制
        1）判断是否是ARC机制
        查看项目信息，不能使用 retain release autorelease retainCount
        在dealloc方法中不能使用 [super dealloc];
        
        2）使用
        正常创建对象，不用手动释放对象
 */
#import <Foundation/Foundation.h>
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //ARC机制下对象的释放
        Dog *jd = [Dog new];
        [jd run];
        
//        jd = nil;
        
    }
    return 0;
}
