//
//  main.m
//  2-NSFileManager介绍和用法
//
//  Created by yezhimin on 15/10/26.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSFileManager 用于判断
        NSString *filePath = @"/Users/yezhimin/Desktop/yzmin.txt";
        
        NSString *filePath2 = @"/";// /Users/yezhimin/Desktop
        //1）判断文件是否存在
        //创建文件管理对象
        //调用defaultManager 创建一个文件管理的单列对象
        NSFileManager *fm = [NSFileManager defaultManager];
        // YES 存在 NO 不存在
        BOOL isYES = [fm fileExistsAtPath:filePath];
        NSLog(@"%d",isYES);
        
        if(isYES)
        {
            BOOL isDir;
            //2) 判断是否是一个目录
            [fm fileExistsAtPath:filePath2 isDirectory:&isDir];
            if(isDir)
            {
                NSLog(@"这是一个目录");
            }
            else
            {
                NSLog(@"这不是一个目录");
            }
        }
        
        //3) 判断文件是否可读
        isYES = [fm isReadableFileAtPath:filePath2];
        NSLog(@"%d",isYES);
        
        //4）是否可写
        isYES = [fm isWritableFileAtPath:filePath2];
        NSLog(@"%d",isYES);
        
        //5) 是否可删除
        isYES = [fm isDeletableFileAtPath:filePath2];
        NSLog(@"%d",isYES);
    }
    return 0;
}
