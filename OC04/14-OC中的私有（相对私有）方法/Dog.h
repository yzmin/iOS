//
//  Dog.h
//  OC04
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
//.h 声明的文件
//.m 实现的文件
@interface Dog : NSObject
{
    int _tuiNum;
}
-(void)setTuiNum:(int)tuiNum;
-(void)run;
@end
