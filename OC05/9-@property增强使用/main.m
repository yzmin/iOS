//
//  main.m
//  9-@property增强使用
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

/*
    @property使用
    
    xcode 4.4之前
    1）@property + 手工实现方法
    2）@property + @synthesize
    3）@property + @synthesize = xxxx;
    
    xcode 4.4之后
    .h文件 写 @property 类型 方法名
    0）检测类有没有声明 _xxx 实例变量；如果没有，生成一个 _xxx 实例变量，私有，子类不可访问
    1）给实例变量声明get／set方法
    2）给实例变量实现get／set方法
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        //点语法 都会替换成set方法
        p.name = @"yzmin";
        p.age = 24;
        p.sex = kSexMan;
        p.weight = 55.0f;
        p.height = 175.0f;
        
        NSLog(@"name = %@, age = %d，sex = %d,",p.name,p.age,p.sex);
        
        [p test];
    }
    return 0;
}
