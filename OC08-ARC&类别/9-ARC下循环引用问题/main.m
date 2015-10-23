//
//  main.m
//  9-ARC下循环引用问题
//
//  Created by yezhimin on 15/10/22.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

/*
    在ARC  @property  set方法参数
    原子性\读写  和MRC下是一样的
    
    MRC             ARC
        assign      assign
        retain      strong(强指针) OC其他的对象  weak（弱指针）UI控件
        copy        copy
 */

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //dog p 都是局部变量
        //局部变量的生命周期：当前代码块结束，释放
        Dog *dog = [Dog new];
        Person *p = [Person new];
        //构成循环引用
        p.dog = dog;
        dog.owner = p;
        
        NSLog(@"xxxxx");
    }
    return 0;
}
