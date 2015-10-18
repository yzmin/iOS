//
//  main.m
//  关于superinit的再深入
//
//  Created by yezhimin on 15/10/18.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
    Person类
        age 
    Student类
        sno
    
 */
#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *stu = [Student new];
        //stu.age -->[stu age];返回的是_age 的值
        NSLog(@"stu.age = %d, stu.sno = %d",stu.age,stu.sno);
    }
    return 0;
}
