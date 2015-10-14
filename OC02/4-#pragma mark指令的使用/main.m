//
//  main.m
//  4-#pragma mark指令的使用
//
//  Created by yezhimin on 15/10/14.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

//用来标识
#pragma mark 类的声明
@interface Person : NSObject
{
    //定义实例变量
@public
    NSString *_name;
    int _age;
}
//方法的声明
-(void)run;

@end

#pragma mark - 类的实现
@implementation Person
-(void)run
{
    
}
@end

#pragma mark - 狗类的声明
//狗类的声明
@interface Dog : NSObject
{
    NSString *_color;//颜色
    int _age;//年龄
}
//方法的声明
-(void)run;

@end

#pragma mark - 狗类的实现
//狗类的实现
@implementation Dog

//方法的具体实现
-(void)run
{
    
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
