//
//  Person.h
//  OC09-block&协议
//
//  Created by yezhimin on 15/10/25.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^BlockType)();

@interface Person : NSObject
//-(void)test:(void(^)())block;
-(void)test:(BlockType)block;
@end
