//
//  main.m
//  20-类对象的存储细节
//
//  Created by yezhimin on 15/10/18.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        //p --> p 在堆区的空间  ---> isa  ---->类对象 ----> 查找方法
        //[p work];
        //work --->SEL
        //把work转换为SEL类型
        SEL s1 = @selector(work);
        
        [p performSelector:s1];
        
        [p run];
    }
    return 0;
}
