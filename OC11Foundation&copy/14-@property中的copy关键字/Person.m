//
//  Person.m
//  OC11Foundation&copy
//
//  Created by yezhimin on 15/10/27.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)setName:(NSString *)name
{
    if(_name != name)
    {
        [_name release];
        _name = [name copy];
        NSLog(@"_name addr = %p",_name);

        
    }
}
- (void)dealloc
{
    [_name release];
    NSLog(@"Person dealloc");
    [super dealloc];
}
@end
