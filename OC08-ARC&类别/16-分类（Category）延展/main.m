//
//  main.m
//  16-分类（Category）延展
//
//  Created by yezhimin on 15/10/23.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person_work.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        //[p run];
        [p test];
        //[p work];
    }
    return 0;
}
