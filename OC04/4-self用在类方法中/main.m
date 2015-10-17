//
//  main.m
//  4-self用在类方法中
//
//  Created by yezhimin on 15/10/16.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Person *p = [Person new];
        
        [Person eat];//调用eat
        //类对象
        NSLog(@"Person = %@, Person addr = %p",[Person class],[Person class]);
    }
    return 0;
}
