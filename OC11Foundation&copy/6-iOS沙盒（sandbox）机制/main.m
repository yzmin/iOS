//
//  main.m
//  6-iOS沙盒（sandbox）机制
//
//  Created by yezhimin on 15/10/26.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
    沙盒：
        文件系统：
        每个应用程序都有自己的沙盒
        IOS8开始，开放了几个固定区域
 
    沙盒包含：
        应用程序包
        Documents   持久化的数据
        tmp         临时目录
        Library
            cache   缓存
            Perferences 配置信息\SQLite
    沙盒路径获取的方法：
        1）沙盒的路径
        NSHomeDirectory();
        2）Documents 路径
 
        3）tmp 路径
 
        4）Library 路径
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //获取根目录
        //Mac 用户的根目录
        //sandBoxPath = /Users/yezhimin/Library/Developer/CoreSimulator/Devices/5FB2648A-A4D6-40F1-BA67-814BF0920866/data/Containers/Data/Application/E40CD63F-AAE3-4515-80DA-3D45F9F0B98F
        //1)沙盒的根目录
        NSString *sandBoxPath = NSHomeDirectory();
        NSLog(@"sandBoxPath = %@",sandBoxPath);
    
        //2）Documents目录
        //返回绝对路径
        //NSSearchPathForDirectoriesInDomains(<#NSSearchPathDirectory directory#>, <#NSSearchPathDomainMask domainMask#>, <#BOOL expandTilde#>)
        
        /*
         第一个参数：要获取的沙盒文件夹名称
         第二个参数：
         NSUserDomainMask = 1;用户主目录中
         NSLocalDomainMask = 2;当前机器中
         NSNetworkDomainMask = 4,网络中可见的主机
         NSSystemDomainMask = 8, 系统目录，不可修改
         NSAllDomainsMask = 0x0ffff;全部
         第三个参数：YES／NO 全部路径
         */
        //NSDocumentDirectory 表示获取沙盒的Documents目录
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
        NSString *documentPath = [paths lastObject];
        NSLog(@"paths = %@",documentPath);
        
        // /Users/yezhimin/Library/Perferences/1.txt
        NSString *filePath = [paths lastObject];
        NSString *str = [filePath stringByAppendingPathComponent:@"Perferences/1.txt"];
        NSLog(@"str = %@",str);
        NSString *str2 = @"abc";
        [str2 writeToFile:str atomically:YES encoding:NSUTF8StringEncoding error:nil];
        
    }
    return 0;
}
