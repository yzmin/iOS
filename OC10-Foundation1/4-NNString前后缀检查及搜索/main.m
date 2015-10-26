//
//  main.m
//  4-NNString前后缀检查及搜索
//
//  Created by yezhimin on 15/10/25.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

//检测字符串的前后缀
void test()
{
    NSString *url = @"https://ios.yzmin.cn";
    //如何检测这个字符串是否是一个网址
    //http://   https://
    //检测一个字符串的前缀是否以 http:// 开头 或者https:// 开头
    //str hasPrefix:@"要检测的内容"];
    if([url hasPrefix:@"http://"] || [url hasPrefix:@"https://"])
    {
        NSLog(@"是一个网址");
    }
    else
    {
        NSLog(@"这不是一个网址");
    }
    //检测字符串的后缀
    //xxxx.jpg 判断字符串的后缀是否是".jpg"
    //xxxx.png
    //xxxx.jpeg
    //xxxx.gif
    NSString *imgName = @"xxxx.png";
    //[str hasSuffix:@"带检测的后缀"］;
    if([imgName hasSuffix:@".jpg"] || [imgName hasSuffix:@".png"] || [imgName hasSuffix:@".gif"]
       || [imgName hasSuffix:@".jpeg"])
    {
        NSLog(@"是一个图片");
    }
    else
    {
        NSLog(@"不是一个图片");
    }

}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       //字符串的查找
        //查找某个字符串在另外一个字符串中首次出现的位置
        //    0123456789
        //1 @"dfadfiosdsaguiosdfjahdiosdhsfhadsl"
        //2 @"ios"
        //5
        //1 rangofString 2
        NSString *str1 = @"dfadfiosdsaguiosdfjayzminhdiosdhsfhadsl";
        NSString *str2 = @"ios";
        //字符串查找
        /*
         查找 2 在 1 中首次出现的位置
         如果查找到了，返回2在1中的位置和长度
         如果查找不到，返回的信息：
                location    特别大的数(NSNotFound) 最大的long类型的数
                length      0
         range 结构体变量 NSRange 结构体别名
         */
        NSRange range = [str1 rangeOfString:str2];
        //判断是否查找到了
        if(range.location != NSNotFound)
        {
            //rang.location 表示字符串首次出现的位置
            //rang.length 字符串出现的长度（实质是子字符串的长度）
            NSLog(@"%lu,%lu",range.location,range.length);
        }
        else
        {
            NSLog(@"在%@没有找到这个字符串%@",str1,str2);
        }
        
    }
    return 0;
}
