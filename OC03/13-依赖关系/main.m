//
//  main.m
//  13-依赖关系
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Girl.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //创建Girl对象
        Girl *mm = [Girl new];
        IPhone *iphone7Plus = [IPhone new];
        //iphone7Plus 作为 mm对象的方法参数
        //mm 依赖 iphone7Plus
        [mm callPhoneToTuHao:iphone7Plus];
        [mm sendMessageToTuHao:iphone7Plus];
    }
    return 0;
}
