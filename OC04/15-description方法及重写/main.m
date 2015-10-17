//
//  main.m
//  15-description方法及重写
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

/*
 description 方法的作用：
 当我们以%@ 打印 实例对象的时候，他会默认的调用description 方法，返回打印的内容
 我们可以通过重写父类（NSObject)的description 方法，来自定义打印
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        p->_age = 10;
        p->_name = @"yzmin";
        
        NSLog(@"p = %@",p);//<类名:0x100233333>
        NSLog(@"类对象: %@ ",[Person class]);
    }
    return 0;
}
