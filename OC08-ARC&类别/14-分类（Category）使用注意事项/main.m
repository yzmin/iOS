//
//  main.m
//  14-分类（Category）使用注意事项
//
//  Created by yezhimin on 15/10/23.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
    分类的使用注意事项：
    1）在分类的声明中不能声明实例变量,不能使用@property
    2) 在分类的方法中，可以访问类中实例变量
    3）在分类中存在和类同名的方法，优先访问分类中的方法
    4)当在多个类别中有同名的方法的时候，这时候，执行的最后编译的那个方法
      可以改变编译的顺序
 */

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+playGame.h"
#import "Person+study.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        //p.sex = 10;
        p.age = 18;
        [p run];  //分类方法，在分类方法中访问原来类的实例变量
    }
    return 0;
}
