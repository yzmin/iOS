//
//  Caculator2.h
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Caculator2 : NSObject
//＋ 开头 类方法
//－ 开头 对象方法
+(int)add:(int)num1 andNum2:(int)num2;
+(int)sub:(int)num1 andNum2:(int)num2;
+(int)mul:(int)num1 andNum2:(int)num2;
+(float)div:(int)num1 andNum2:(int)num2;
+(float)avg:(int)num1 andNum2:(int)num2;
@end
