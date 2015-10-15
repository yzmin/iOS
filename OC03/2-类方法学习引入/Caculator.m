//
//  Caculator.m
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Caculator.h"

@implementation Caculator
-(void)add
{
    _result = _num1 + _num2;
}

-(void)sub
{
    _result = _num1 - _num2;
}

-(void)mul
{
    _result = _num1 * _num2;
}

-(void)div
{
    _result = (float)_num1 / _num2;
}
@end
