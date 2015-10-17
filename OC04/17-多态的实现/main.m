//
//  main.m
//  17-多态的实现
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
    满足多态的条件
    1）存在继承关系
    2）存在方法重写
    3)父类的指针指向子类对象
 */

#import <Foundation/Foundation.h>
#import "BigYellowDog.h"
#import "Cat.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        BigYellowDog *byd = [BigYellowDog new];
//        [byd run];
//        
//        Dog *dog = [Dog new];
//        [dog run];
//        
//        Animal *ani = [Animal new];
//        [ani run];
        //创建Dog对象,初始化，返回地址
        Animal *ani = [Dog new];
        [ani run];//狗 在 拼命的 疯跑
        
        ani = [Cat new];
        [ani run];//猫 上树
        
        ani = [BigYellowDog new];
        [ani run];
        
        
        //父类调用了子类的同名方法
        //多态的特点：不同对象能够响应相同方法的能力
        
        //多态注意：
        //1、父类能调用子类的非重写的方法（方法必须存在）,需要强制转换。
        [(BigYellowDog *)ani catchMouse];
        //2、不能访问对象不存在的方法
        ani = [Dog new];
        //告诉编译器，ani是Cat对象类型
        [(Cat *)ani catchMouse];//
    }
    return 0;
}
