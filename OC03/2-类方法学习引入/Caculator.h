//
//  Caculator.h
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Caculator : NSObject
{
    @public
    //实例变量定义列表
    int _num1;
    int _num2;
    float _result;
}
//四个无参数无返回值
-(void)add;
-(void)sub;
-(void)mul;
-(void)div;

@end
