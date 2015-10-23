//
//  main.m
//  3-autorelease的应用场景
//
//  Created by yezhimin on 15/10/22.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    //需要加入到自动释放池中，方才有效
//    Person *p = [Person person];
    @autoreleasepool {
//        NSString *str = [NSString stringWithFormat:@"xxx"];
        //[[[NSArray alloc] init] autorelease];
//        NSArray *array = [NSArray array];
//        NSDictionary *dic = [NSDictionary dictionary];
        
        //1) person 类方法：
        //帮我们快速的创建对象，并且管理对象的内存（加入到自动释放池）
        //Person *p = [Person person];
        //1）创建一个对象
        //2）用完之后，系统把对象释放掉 p
        
        //Person *p = [[Person alloc] init];
        //[p autorelease];
        
//        Person *p = [Person person];
        
        
        //2) 创建一个学生的对象
//        Student *stu = [Student new];
        //动态类型，程序运行的时候，才知道是什么类型
//        Student *stu = [Student person];
//        [stu run]; //Student run.
        
        //存在的问题
        //id 和 instancetype区别
        //instancetype 可以智能帮我们判断赋值的指针的类型和方法的返回值类型是否一致
        //NSString  Student
        //NSString *str1 = [Student person];
        //NSLog(@"str1.length = %ld",str1.length);
        Person *stu = [Student person];
        [stu run];
    }
    return 0;
}
