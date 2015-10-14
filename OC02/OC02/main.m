//
//  main.m
//  OC02
//
//  Created by yezhimin on 15/10/14.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

/*
 Person *p = [Person new];
 理解方式：
 1、创建一个person 指针，指针保存的对象的地址
 2、用person 类实例化一个实例对象，对象名 p 

 */

#import <Foundation/Foundation.h>

//类的声明
@interface Person : NSObject
{
    @public
    //定义实例变量
    NSString *_name;
    int _age;
    
}
//方法的声明
-(void)run;
@end

//类的实现
@implementation Person
//方法的实现
-(void)run
{
    NSLog(@"奔跑吧，小白");
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建对象
        Person *p = [Person new];
        p->_name = @"yzmin";
        p->_age = 25;
        
        [p run];
    }
    return 0;
}
