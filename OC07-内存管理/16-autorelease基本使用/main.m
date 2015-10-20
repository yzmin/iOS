//
//  main.m
//  16-autorelease基本使用
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    //iOS 5.0之后
    //创建一个自动释放池
    @autoreleasepool {
        //如果一个对象调用了 autorelease方法，则系统会把该对象加入到自动释放池
        //
        Car *car = [[[Car alloc] init] autorelease];
        
        [car retain];
        [car run];
        [car run];
        [car run];
        [car release];
        
        //[car release];
        
        [car run];
    }//执行到此处的时候，会对自动释放池中的每个对象发送release消息
    return 0;
}
