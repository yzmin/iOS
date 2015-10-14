//
//  main.m
//  13-练习题讲解1
//
//  Created by yezhimin on 15/10/14.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
 设计一个学生类
 属性：
    姓名
    生日（结构体）
 */

#import <Foundation/Foundation.h>
//定义结构体
typedef struct
{
    int year;
    int month;
    int day;
}MyDate;

//类的声明
@interface Student : NSObject
{
    @public
    //定义实例变量
    NSString *_name;//姓名
    MyDate _birthday;//生日
    
}

@end

//类的实现
@implementation Student

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建对象
        Student *stu = [Student new];
        stu->_name = @"陈小";
        //方法一：强转
        stu->_birthday = (MyDate){1991,8,1};
        //方法二：分别赋值
        stu->_birthday.year = 1995;
        stu->_birthday.month = 8;
        stu->_birthday.day = 12;
        //方法三:
        MyDate d2 = {1992,5,5};
        stu->_birthday = d2;
        
        
        
        NSLog(@"%d年，%d月，%d日",stu->_birthday.year,stu->_birthday.month,stu->_birthday.day);
        
        
        //举例子
//        struct Car
//        {
//            int wheelCount;
//            int speed;
//        }Car1;
//        Car1 = (struct Car){2002,200};
//        如果没有强转，不知道｛｝中括号里是数组还是结构体，所以要强转
//        int a[2] = {1,2};
        
        //MyDate mydate = {1991,8,1};
    }
    return 0;
}
