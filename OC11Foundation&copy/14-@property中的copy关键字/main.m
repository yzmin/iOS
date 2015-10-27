//
//  main.m
//  14-@property中的copy关键字
//
//  Created by yezhimin on 15/10/27.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        
//        p.name = @"张山";
//        NSLog(@"p.name = %@",p.name);
        NSMutableString *str = [NSMutableString string];
        [str appendString:@"夜之梦"];
        NSLog(@"str addr = %p",str);
        
        //设置姓名
        p.name = str;
        NSLog(@"p.name = %@",p.name);
        
        [str appendString:@"&老万天"];
        
        NSLog(@"str addr = %p",p.name);
        
        NSLog(@"p.name = %@",p.name);
        [p release];
        
        
        NSMutableString *str1 =[NSMutableString stringWithFormat:@"abc"];
        NSLog(@"str1 addr = %p",str1);
        
        NSMutableString *str2 = [str1 copy];
        NSLog(@"str2 addr = %p",str2);
        //        copy：对于可变对象为深复制，引用计数不改变;对于不可变对象是浅复制，引用计数每次加一。始终返回一个不可变对象。
        //        2015-10-27 10:16:05.462 14-@property中的copy关键字[7474:372671] str1 addr = 0x100106860
        //        2015-10-27 10:16:05.463 14-@property中的copy关键字[7474:372671] str2 addr = 0x63626135
        

        NSString *str3 =[NSString stringWithFormat:@"abc"];
        NSLog(@"str3 addr = %p",str3);
        
        NSString *str4 = [str3 mutableCopy];
        NSLog(@"str4 addr = %p",str4);
        //        mutableCopy：始终是深复制，引用计数不改变。始终返回一个可变对象。
        //        2015-10-27 10:19:46.533 14-@property中的copy关键字[7537:374487] str3 addr = 0x63626135
        //        2015-10-27 10:19:46.533 14-@property中的copy关键字[7537:374487] str4 addr = 0x100300280

        
        

    }
    return 0;
}
