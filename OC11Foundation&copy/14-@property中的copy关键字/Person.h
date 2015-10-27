//
//  Person.h
//  OC11Foundation&copy
//
//  Created by yezhimin on 15/10/27.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic,copy) NSString *name;

/*
 @property (nonatomic,copy) NSString *name;
 
 -(void)setName:(NSString *)name
 {
    if(_name != name)
    {
        [_name release];
        _name = [name copy];
    }
 }
 -(NSString *)name
 {
    return _name;
 }
 */
@end
