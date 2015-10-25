//
//  main.m
//  12-protocol类型限制
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Girl.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *d = [Dog new];
        Girl *mm = [Girl new];
        NSString *str = @" ";
        //增加类型限制
        //第一种类型限制：给id类型增加限制
        // id<houseHold> obj;
        //增加<houseHold>以后，表示obj只能赋值遵守了houseHold协议的对象
        id<houseHoldProtocol> obj = mm;
        //第二种类型限制：
        //表示obj2赋值的时候，必须是Girl对象，并遵守了houseHold协议
        Girl<houseHoldProtocol> *obj2 = mm;
        
        //第三种类型限制
        obj2.dog = d;
    }
    return 0;
}
