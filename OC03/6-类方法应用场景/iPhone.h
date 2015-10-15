//
//  iPhone.h
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

//定义枚举类型
typedef enum color{
    kColorBlack,
    kColorWhite,
    kColorTHJ
} iColor;

@interface iPhone : NSObject
{
    iColor _color;
    
}
//给一个枚举值，返回对应的颜色的字符串
//方法需要有个参数
//参数 iColor类型
+(NSString *)getPhoneColor:(iColor)color;

@end
