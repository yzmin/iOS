//
//  Caculator2.m
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Caculator2.h"

@implementation Caculator2
+(int)add:(int)num1 andNum2:(int)num2
{
    return num1 + num2;
}
+(int)sub:(int)num1 andNum2:(int)num2
{
    return num1 - num2;
}
+(int)mul:(int)num1 andNum2:(int)num2
{
    return num1 * num2;
}
+(float)div:(int)num1 andNum2:(int)num2
{
    return (float)num1 / num2;
}
+(float)avg:(int)num1 andNum2:(int)num2
{
    //return (num1 + num2)/2;
    return [Caculator2 add:num1 andNum2:num2] / 2;
}
@end
