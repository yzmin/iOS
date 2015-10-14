//
//  main.m
//  6-常见错误汇总
//
//  Created by yezhimin on 15/10/14.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - 类的声明
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

#pragma mark - 类的实现
@implementation Person
//方法的实现
//-(void)run
//{
//    NSLog(@"小白 跑了");
//}
//函数定义声明在此
@end

//狗类的声明
@interface Dog : NSObject
{
    NSString *_color;
    int age;
}

@end

//狗类的实现
@implementation Dog

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建对象
        Person *p = [Person new];
        p->_name = @"yzmin";
        p->_age = 20;
        
        NSLog(@"出现吧,神龙!");
        
        @try {
            //将要出错的代码
            [p run];
        }
        @catch (NSException *exception) {
            //出错以后，处理的代码
            NSLog(@"出错了");
        }
        @finally {
            //是否出错，都要执行的代码
            NSLog(@"aaaaaa");
        }
        NSLog(@"运行");
    }
    return 0;
}
