//
//  Person.h
//  OC04
//
//  Created by yezhimin on 15/10/16.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int sex;//默认，受保护的
    @public
    int _age;
    NSString *_name;
    
    @protected
    float _height;
    @private
    float _weight;
}

@end
