//
//  main.m
//  12-id类型及应用场景
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "Cat.h"

void test()
{
    Animal *ani = [Dog new];
    [ani run];
    
    //NSObject 没有run方法
    NSObject *obj = [Animal new];
    [(Animal *)obj run];
    
    obj = [Dog new];
    [(Dog *)obj lookHome];
    //结论：
    //1）NSObject 指向任何对象，多态的体现
    //2）使用NSObject对象调用 子类的方法，都需要强制类型转换

}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //想法：如果有一个东西和NSObject对象一样，可以指向任何对象
        // id 类型，可以使用 id类型，定义变量，变量的特点：万能指针
        id obj;//obj 指针类型，用来存放地址
        //ios5之后 推出了 instancetype类型
        //id 类型的作用，它可以指向任何对象，动态的给id 变量赋值
        //不足：在编译的时候，无法确定是否能够响应这个方法
        obj = [Animal new];//赋值动物对象
        obj = [Dog new];
        obj = [Cat new];
        
        [obj run];
        //不能判断是否可以使用
        //[obj lookHome];
    }
    return 0;
}
