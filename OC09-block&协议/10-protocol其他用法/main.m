//
//  main.m
//  10-protocol其他用法
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
 1）一个协议，可以遵守其他协议
 2）一个类可以遵守多个协议
 3）一个协议可以被多个类遵守
 */
#import <Foundation/Foundation.h>
#import "Person.h"
#import "Cat.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p run];
        
        Cat *cat = [Cat new];
        [cat run];
        
        Student *stu = [Student new];
        [stu run];
    }
    return 0;
}
