//
//  main.m
//  18-类的本质
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建一个实例对象
        Person *p = [Person new];
        //Person类的本质也是一个对象，类对象
        //类对象的获取方法
        //1）使用实例对象来获取
        //c1 就是类对象
        Class c1 = [p class];
        //2）类对象获取的第二种方法
        //通过类名来获取
        Class c2 = [Person class];
        NSLog(@"%@",c1);
    }
    return 0;
}
