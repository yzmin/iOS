//
//  main.m
//  3-NSString字符串比较
//
//  Created by yezhimin on 15/10/25.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

void test()
{
    NSString *str = @"abc";  //a 97
    NSString *str2 = @"ab"; //b 98
    
    //取出每个字符的ASCII码值，比较ASCII值大小
    //compare 方法比较大小，默认区分大小写
    //NSComparisonResult result = [str compare:str2];
    
    //比较的时候不区分大小写,参考字符的个数
    NSComparisonResult result = [str compare:str2 options:NSCaseInsensitiveSearch | NSNumericSearch];
    
    switch (result) {
        case NSOrderedAscending:
            NSLog(@"str1 < str2 升序");
            break;
        case NSOrderedSame:
            NSLog(@"str1 == str2");
            break;
        case NSOrderedDescending:
            NSLog(@"str1 > str2 降序");
            break;
    }

}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str1 = @"abc";  //a 97   //常量区
        NSString *str2 = @"abc"; //b 98
        NSString *str3 = [NSString stringWithFormat:@"abc"];//堆区
        NSString *str4 = [[NSString alloc]initWithString:@"abc"];//常量区        NSLog(@"%p",str1);
        NSLog(@"%p",str4);
        //字符串判断是否相等 “==”？
        //“==”,不能够判断字符串是否相等的
        //判断字符串内容真正是否相等，使用isEqualToString:
        //注意：这是区分大小写的,返回BOOL
        if([str1 isEqualToString:str3])
        {
            NSLog(@"相等");
        }
        else
        {
            NSLog(@"不相等");
        }
    }
    return 0;
}
