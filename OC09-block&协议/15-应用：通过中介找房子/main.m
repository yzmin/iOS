//
//  main.m
//  15-应用：通过中介找房子
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "LinkHome.h"
#import "WAWJ.h"
NSString *str = @"yzm";

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *stu = [Student new];
        
        //代理的类
        LinkHome *linkHome = [LinkHome new];
        WAWJ *wawj = [WAWJ new];
        stu.delegate = linkHome;
        stu.delegate = wawj;
        
        [stu needHouse];
        //代理类   LinkHome
        //代理对象  delegate = linkHome
        //协议    findHouseProtocol
        //协议内容  -(void)findHouse;
        


        
    }
    return 0;
}
