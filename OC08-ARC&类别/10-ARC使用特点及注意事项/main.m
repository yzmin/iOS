//
//  main.m
//  10-ARC使用特点及注意事项
//
//  Created by yezhimin on 15/10/23.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建对象
        //返回地址
        //弱指针指向
        //马上释放对象
        //弱指针指向对象销毁的过程
        //1）释放对象空间
        //2）stu = nil
        
       __weak Student *stu = [Student new];
        NSLog(@"%d",stu.age); //[nil age];
    }
    return 0;
}
