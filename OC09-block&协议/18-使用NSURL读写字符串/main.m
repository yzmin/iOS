//
//  main.m
//  18-使用NSURL读写字符串
//
//  Created by yezhimin on 15/10/25.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"$100000";
        //URL 统一资源定位符
        //NSURL OC提供了一个URL处理的一个类
        //NSURL 写入文件
        //本地文件：file://
        //通过URLWithString 构建一个NSURL
        //URLWithString 可以构建本地路径的URL
        //              可以构建路径，调用手机系统的程序
        //NSURL *url = [NSURL URLWithString:@"tel://10086"];
//        NSURL *url = [NSURL URLWithString:@"file:///Users/yezhimin/Desktop/yzmin.txt"];
        //2) fileWithString 获取本地文件路径
        NSURL *url = [NSURL fileURLWithPath:@"/Users/yezhimin/Desktop/yzmin.txt"];
        NSError *err;
        if([str writeToURL:url atomically:YES encoding:NSUTF8StringEncoding error:&err])
        {
            
            NSLog(@"写入成功！%@",err);
        }
        else
        {
            NSLog(@"写入失败！%@",err);
        }
        
        //读取文件
        NSString *str2 = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:&err];
        NSLog(@"%@",str2);
        
    }
    return 0;
}
