//
//  main.m
//  17-NSString介绍及基本使用
//
//  Created by yezhimin on 15/10/25.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
//写入
void test()
{
    //把NSString 字符串保存到文件中
    NSString *str = @"zhangsanfeng";
    
    //writeTofile 的方法
    //文本编码：
    //中文：GBK GB2312
    //      3     3
    //UTF－8: 国际通用编码
    //          2
    
    //[str writeToFile:@"文件的路径" atomically:原子性（YES／NO）encoding:NSUTF8StringEncoding error:nil];
    NSError *err;
    [str writeToFile:@"/Users/yezhimin/Desktop/str.txt" atomically:YES  encoding:NSUTF8StringEncoding error:&err];
    //writeToFile 方法，如果写入文件成功，err == nil没有错
    //err != nil 有错
    if(err != nil)
    {
        NSLog(@"写入失败！%@",err);
    }
    else{
        NSLog(@"写入成功！");
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSError *err;
        //NSString *str = NSString stringWithContentsOfFile:@"待读取的文件路径" encoding:NSUTF8StringEncoding error:&err
        NSString *str = [NSString stringWithContentsOfFile:@"/Users/yezhimin/Desktop/str.txt" encoding:NSUTF8StringEncoding error:&err];
        if(err != nil)
        {
            NSLog(@"读取失败！%@",err);
        }
        else{
            NSLog(@"读取成功！");
            NSLog(@"%@",str);
        }
    }
    return 0;
}
