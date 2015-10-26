//
//  main.m
//  13-NSArray读写文件
//
//  Created by yezhimin on 15/10/25.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = [NSArray arrayWithObjects:@"one",@"zbz",@"cgx",@"sb",@"ddd",nil];
        //把 NSArray 中的内容，写入到文件中
        //arr.plist 一种特殊的文件格式
        BOOL isWrite = [array writeToFile:@"/Users/yezhimin/Desktop/arr.xml" atomically:YES];
        if(isWrite)
        {
            NSLog(@"写入成功");
        }
        else
        {
            NSLog(@"写入失败");
        }
        //从文件中，读取一个数组，可以数据持久化
        NSArray *readArr = [NSArray arrayWithContentsOfFile:@"/Users/yezhimin/Desktop/arr.xml"];
        NSLog(@"readArr = %@",readArr);
    }
    return 0;
}
