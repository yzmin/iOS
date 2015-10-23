//
//  main.m
//  4-应用:创建一个学生类初始化年龄
//
//  Created by yezhimin on 15/10/22.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/**
 *  Student 
        初始化值   自定义构造方法
                    1）对象
                    2）返回值是id 或 instancetype
                    3）initWithxxxx
 */

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *stu = [[Student alloc] initWithAge:18];
        NSLog(@"age = %d",stu.age);
        [stu release];
        //思考：快速的创建 Student 对象，并初始化年龄
        //1)定义类方法
        //2)类方法有参数，传递一个年龄
        
        Student *stu2 = [Student studentWithAge:19];
        NSLog(@"age = %d",stu2.age);
    }
    return 0;
}
