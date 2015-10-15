//
//  iPhone.m
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "iPhone.h"

@implementation iPhone
+(NSString *)getPhoneColor:(iColor)color
{
    NSString *colorName;
    switch (color) {
        case kColorBlack:
            colorName = @"黑色";
            break;
        case kColorWhite:
            colorName = @"白色";
        case kColorTHJ:
            colorName = @"土豪金";
        default:
            break;
    }
    return colorName;
}
@end
