//
//  main.m
//  19-自定义构造方法
//
//  Created by yezhimin on 15/10/18.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

/*
    自定义构造方法的规范：
        1）一定是一个对象方法
        2）返回值一定是 id 或者 instancetype
        3)方法名 一定 以 initWith 开头
 
    Person
    //自定义构造方法 实现 姓名和年龄 的初始化
 */

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //这种写法不能调用自定义构造方法
        //Person *p = [Person new];//_age = 0, _name = nil
        Person *p = [[Person alloc] initWith:@"yzmin" andAge:24];
        NSLog(@"name = %@, age = %d",p.name,p.age);
        
        Student *stu = [[Student alloc] initWith:@"武大郎" andAge:28 andSno:100];
        NSLog(@"name = %@, age = %d,sno = %d",stu.name,stu.age,stu.sno);
        
        
    }
    return 0;
}
