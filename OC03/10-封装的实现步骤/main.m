//
//  main.m
//  10-封装的实现步骤
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

/*
 封装的原理： 
    给实例变量提供一个修改其值的方法和获取其值的方法
 
 封装的步骤：
    1）设置实例变量值的方法（setter,设置器)

 命名规范：
 1）set方法一定是一个对象方法（以 - 开头）
 2）set方法一定没有返回值（void）
 3）set方法的方法名一定是以set开头，后面跟去掉下划线的实例变量名，而且首字母要大写
 4）set方法一定有参数，参数类型和实例变量的类型要一致
 5）set方法的行参的名称,一般建议是去掉下划线的实例变量名
 6）set方法的实现中一定要给实例变量赋值
 
 getter方法:获取实例变量的值
    命名规范：
    1）get方法一定是一个对象方法
    2）get方法一定有返回值，返回值类型必须和实例变量的类型一致
    3）get方法的方法名，一定是去掉下划线的实例变量名
    4）get方法的实现中，一定要返回实例变量值
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
//        p->_age = -18;
//        NSLog(@"_age = %d",p->_age);
        
        [p setName:@"张三丰"];
        [p setAge:18];
        NSLog(@"_name = %@",[p getName]);
        NSLog(@"_age = %d",[p getAge]);
    }
    return 0;
}
