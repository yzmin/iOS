//
//  Person.h
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IPad.h"

@interface Person : NSObject
{
    //_ipad 对象，作为Person的实例变量
    //_ipad 和 person 建立了关联关系
    IPad *_ipad;
    
}
-(void)listenMusic;
-(void)setIPad:(IPad *)ipad;
@end
