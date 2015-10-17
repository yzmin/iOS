//
//  Student.m
//  OC04
//
//  Created by yezhimin on 15/10/16.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)test
{
    //1、_sex 在父类中 @protected
    //能被继承   能使用
    _sex = 1;
    NSLog(@"_sex = %d",_sex);
    
    //2、@public
    _age = 18;
     NSLog(@"_age = %d",_age);
    
    //3、@private
//    _weight = 10.34f;
}
@end
