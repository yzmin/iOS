//
//  main.m
//  5-类方法易犯的错误
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

/*
 类方法使用注意事项：
  1)在类方法中不能够使用实例变量
    如果在类方法中使用变量，需要通过参数传递过来
    
  2）类方法和对象方法的比较
    类方法             对象方法

调用：类名去调用        对象去调用
定义：  ＋                －
不同：不能使用实例变量   能够使用实例变量
 
类方法中其他方法调用问题：
    1）能否调用当前类或其他类类方法？能
 
    2）在类方法中能否调用对象方法？
        1) 对象作为方法的参数传递过来
        2）创建一个对象
 
 在对象方法中可以调用自身和其他对象方法
 
 在对象方法中，可以调用类方法吗？
 
 类方法不可以调用自身，会造成死循环
 */

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *car = [Car new];
        car->_lunNum = 20;
        
        //让车去跑
//        [car run];
        [car test:car];
        [Car test];
        //[Car run:10];
        
//        Person *feng = [Person new];
//        [Car run:10 :feng];
        
    }
    return 0;
}
