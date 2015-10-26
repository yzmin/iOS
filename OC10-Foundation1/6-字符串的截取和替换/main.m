//
//  main.m
//  6-字符串的截取和替换
//
//  Created by yezhimin on 15/10/25.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
void test()
{
    //                0123456789
    NSString *str = @"http://www.baidu.com";
    //1) 从xx位置开始，到最后结束(包含xx这个位置的字符)
    NSString *str1 = [str substringFromIndex:5];
    NSLog(@"%@",str1);
    
    //2) 从开始位置，到xx位置结束（不包含XX这个位置的字符）
    NSString *str2 = [str substringToIndex:7];
    NSLog(@"%@",str2);
    
    
    //3) 截取一个范围 range
    NSRange r1 = {3,4};
    NSString *str3 = [str substringWithRange:r1];
    NSLog(@"%@",str3);
}
/**
 *  字符串截取的练习
 */
void test2()
{
    //                01234567 8 910
    NSString *str = @"<yzmin>叶志敏IOS</yzmin>";
    //@">" loc + 1;
    NSUInteger loc = [str rangeOfString:@">"].location + 1;//截取位置
    //@"</" loc
    NSUInteger len = [str rangeOfString:@"</"].location - loc;//截取的长度
    //构建 range
    NSRange r = NSMakeRange(loc,len);
    //截取
    NSString *subStr = [str substringWithRange:r];
    NSLog(@"%@",subStr);

}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //字符串的替换
        //@"fdshfhaeiohfidsafaiehfahfafdhajfafqffafa";
        //将http:**iOS.yzmin.con*ios*image*content_25.png
        
        NSString *str = @"dshfhaeiohfidsafaiehfahfafdhajfafqffafa";
        //[str stringByReplacingOccurrencesOfString:@"源字符串中的内容" withString:@"要替换的内容"];
        NSString *newStr = [str stringByReplacingOccurrencesOfString:@"a" withString:@"*"];
        NSLog(@"newStr = %@",newStr);
        
        //把空格给去掉
        str = @"dshfh aeio hfidsa faiehf ahfafd hajfaf qffafa";
        newStr = [str stringByReplacingOccurrencesOfString:@" " withString:@""];
        NSLog(@"newStr = %@",newStr);
        
        str = @"http:**iOS.yzmin.con*ios*image*content_25.png";
        newStr = [str stringByReplacingOccurrencesOfString:@"*" withString:@"/"];
        NSLog(@"newStr = %@",newStr);
        //1) 空格 替换成空
        //2）把* 替换成/
        str = @"http:** iOS.yzmin. con*ios* image*conte nt_25.png";
        
        newStr = [str stringByReplacingOccurrencesOfString:@" " withString:@""];
        newStr = [newStr stringByReplacingOccurrencesOfString:@"*" withString:@"/"];
        NSLog(@"newStr = %@",newStr);
        
        
    }
    return 0;
}
