//
//  main.m
//  2-autorelease注意及错误用法
//
//  Created by yezhimin on 15/10/22.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/**
 *  autorelease 的使用注意
 */
void test()
{
    //自动释放池
    Person *p = [Person new];
    @autoreleasepool {
        //autorelease的使用注意：
        //1)并不是所有的放到自动释放池中的代码，产生的对象就会自动释放
        // 如果需要释放，必须加入到自动释放池
        Person *p = [[Person new] autorelease];
        
        //3)我们只需要在自动释放代码块中调用autorelease，就可以把对象
        //加入到自动释放池
        [p autorelease];
    }
    //2）如果对象调用了autorelease 但是，没有在任何一个自动释放池中，此时没有在自动释放池代码中间
    //    Person *p = [[Person new] autorelease];
}

/**
 *  自动释放池的嵌套
 */
void test2()
{
    Person *p = [[Person alloc] init];
    
    [p retain];
    //autoreleasepool的嵌套
    //自动释放池的栈结构（数据结构），和内存的栈区是不一样的
    //对象存在 位于栈顶位置的自动释放池中
    @autoreleasepool {
        
        @autoreleasepool {
            
            @autoreleasepool {
                [p autorelease];
                for(int i = 0; i < 10000; i++)
                {
                    Person *temp = [[Person new] autorelease];
                }
            }
            [p autorelease];
            //不适于放入过大的内存空间,造成内存峰值上升
            //不能这样做，这样会多次发送 release
            //            [p autorelease];
            //            [p autorelease];
        }//
    }

}

int main(int argc, const char * argv[]) {
    Person *p = [[Person alloc] init];  // 1
    @autoreleasepool {
        [p autorelease]; //释放了 release  0
    }
//    [p release];  //
    return 0;
}
