//
//  main.m
//  14-循环retain问题
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"
#import "ClassB.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建对象
        ClassA *classa = [[ClassA alloc] init]; // a = 1
        
        ClassB *classb = [[ClassB alloc] init]; // b = 1
        
        classa.b = classb; // b = 2
        classb.a = classa; // a = 1
        
        [classb release];   //b  = 1
        [classa release];   //a  = 1
        
        //1)循环 retain 的解决方法
        //让其中的一个让循环引用的对象多 release，
//        [classb release];   //b  = 1
        //2)第二种解决方法
        //@property 一个对象使用 retain 另外一个对象使用assign
        
        
    }
    return 0;
}
