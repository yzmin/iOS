//
//  NSString+conutNum.m
//  OC08-ARC&类别
//
//  Created by yezhimin on 15/10/23.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "NSString+conutNum.h"

@implementation NSString (conutNum)
-(int)conutNumForString
{
    //NSLog(@"conutNumForString");
    //NSLog(@"self = %@",self);
    //1）定义字符串
    //NSString *str = @"abc12dfd345dfg354daf";
    int count = 0;
    //2）循环控制
    for(int i = 0; i < self.length; i++)
    {
        //3）取出字符串的每一个字符,对应位置的字符
        unichar ch = [self characterAtIndex:i];
        //NSLog(@"%c",ch);
        if(ch >= '0' && ch <= '9')
        {
            //5）如果是，计数器＋1
            count++;
        }
    }
    //6）输出统计结果
    NSLog(@"字符串中有%d个数字",count);
    return count;
}
@end
