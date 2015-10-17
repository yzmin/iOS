//
//  main.m
//  19-类对象的使用
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //获取类对象
        //c1 就是一个类对象
        Class c1 = [Person class];
        //1）创建实例对象 c1 == Person
        Person *p = [[c1 alloc] init];
        [p run];
        //2)调用类方法
        [c1 test];
    }
    return 0;
}
