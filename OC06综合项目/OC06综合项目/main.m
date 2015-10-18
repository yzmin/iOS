//
//  main.m
//  OC06综合项目
//
//  Created by yezhimin on 15/10/18.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cinema.h"

//购买电影票
void startBuyMovieTicket()
{
    //创建一个电影院的对象
    Cinema *cinma = [[Cinema alloc] initWithCinemaName:@"飘逸影院"];
    [cinma startBuyTicket];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while(1)
        {
            printf("*********欢迎使用购票系统***********\n");
            printf("你可以使用本系统购买：1、电影票   2、演唱会票\n");
            int num;
            scanf("%d",&num);
            //判断输入的合法
            if(num < 1 || num > 2)
            {
                return 0;
            }
            
            if(num == 1)
            {
                NSLog(@"购买的电影票");
                startBuyMovieTicket();
            }
            else if(num == 2)
            {
                NSLog(@"购买演唱会票");
            }

        }
    }
    return 0;
}
