//
//  main.m
//  14-关联关系
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //用iPad听歌
        Person *mm = [Person new];
        
        //创建iPad对象
        IPad *ipad = [IPad new];
        [ipad setModel:@"ipad air"];
        //设置iPad
        [mm setIPad:ipad];
        
        [mm listenMusic];
    }
    return 0;
}
