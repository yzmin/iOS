//
//  main.m
//  13-分类(Category)声明和实现
//
//  Created by yezhimin on 15/10/23.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
    分类：
        一些方法的声明和实现
    作用：在不修改类的源代码的前提下，给类增加新的功能
 
    使用步骤：
            //声明一个类
            @interface Person : NSObject
            @end
 
            //类的实现
            @implementation Person
            @end
 
        1）声明一个分类
            格式：
            @interface 待扩展的类名（分类的名称）
            @end

            Person+base  分类文件的命名规则
            eat run
 
            如：
            @interface Person (base)
                -(void)eat;
                -(void)run;
            @end
 
        2）实现一个分类
            格式：
            @implementation 待扩展的类名 (分类的名称)
            @end
 
            如：
            Person+base 类别实现
            @implementation Person (base)
            -(void)eat{
                NSLog(@"Person eat");
            }
            -(void)run{
                NSLog(@"Person run");
            }
            @end
 
        3）使用分类中的方法
            和使用类中原有的对象一样
            Person *p = [Person new];
            [p run];
        
        playGame 类别
        playlol     playdota
 
        study 类别
        studyc studyios
 
        调用时：需要导入头文件
 */
#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+playGame.h"
#import "Person+study.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p eat];
        [p run];
        
        [p playLol];
        [p playDota];
        
        [p studyC];
        [p studyIOS];
    }
    return 0;
}
