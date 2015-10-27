//
//  Dog.m
//  OC11Foundation&copy
//
//  Created by yezhimin on 15/10/27.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Dog.h"
#import "SingletonTools.h"

@implementation Dog
-(void)run
{
    //SingletonTools *st = [SingletonTools shareInstances];
    SingletonTools *st = [[SingletonTools alloc] init];
    [st release];
    NSLog(@"st.num = %d,st.text = %@",st.num,st.text);
}
@end
