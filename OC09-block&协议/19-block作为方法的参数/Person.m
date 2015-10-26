//
//  Person.m
//  OC09-block&协议
//
//  Created by yezhimin on 15/10/25.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"

@implementation Person
//-(void)test:(void(^)())block
//{
//    if(block != nil)
//    {
//        block();
//    }
//    
//}
-(void)test:(BlockType)block
{
    if(block != nil)
    {
        block();
    }

}
@end
