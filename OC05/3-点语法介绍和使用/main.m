//
//  main.m
//  3-点语法介绍和使用
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        //点语法
        //通过对象名.去掉下划线的实例变量名（方法）
        //实例变量 _age
        //注意：点语法是一个编译器的特性
        //Xcode在编译的时候，看到点语法后，会自动的把点语法替换成set／get方法的调用
        p.age = 38; //等价于 [p setAge:38];
        p.name = @"张三丰";
        
        //[p setAge:20]; //2
        //int age = [p age];
        //当执行编译到此处，会把p.age 换成 ［p age];
        int age = p.age; //p.age 等价于 [p age];
        //p.age 编译器会根据上下文环境，替换成 对象的set或get方法
        //记忆：p.age 有没有被赋值
        //如果有赋值:  p.age = 18 ----> [p setAge:18];
        //如果没有赋值： int age = p.age; --> [p age];
        //  NSLog(@"age = %d",p.age);
        NSLog(@"age = %d, name = %@",age,p.name);
        
        //特别强调
        //误区：千万不要把点语法看做是访问类的实例变量
        //点语法的根本基础 是set和get方法，如果没有set和get方法，将不能使用点语法。
    }
    return 0;
}
