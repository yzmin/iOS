//
//  baseProtocal.h
//  OC09-block&协议
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol baseProtocal <NSObject>
//@required 和 @optional 都是协议中的关键字
//@required 修饰的方法是必须要实现的
@required
-(void)run;
-(void)eat;
//@optional 修饰的方法是可以实现，也可以不实现的
@optional
-(void)dajia;
@end
