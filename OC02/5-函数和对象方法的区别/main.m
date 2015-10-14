//
//  main.m
//  5-函数和对象方法的区别
//
//  Created by yezhimin on 15/10/14.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

//类的声明
@interface Person : NSObject
{
    //定义实例变量
@public
    NSString *_name;
    int _age;
}
//方法的声明
-(void)run;
//函数在此定义声明，不能识别
@end

void test();
void test()
{
    //NSLog(@"出现吧 神龙! %@",_name);函数不能直接访问实例变量
    NSLog(@"出现吧 神龙! ");
}

@implementation Person
//方法的实现
-(void)run
{
    NSLog(@"小白 跑了");
}
//函数定义声明在此
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建对象
        Person *p = [Person new];
        p->_name = @"yzmin";
        p->_age = 20;
        
        [p run];
        test();//函数可以直接调用
        //run();对象方法，不能这样调用
    }
    return 0;
}
