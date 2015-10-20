//
//  main.m
//  作业-微博
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "Account.h"
#import "Microblog.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建用户
        User *zs = [[[User alloc] init] autorelease];
        zs.name = @"张三";
        zs.birthday = (Birthday){2007,9,8,17,56,34};
        //创建账号
        Account *account = [[[Account alloc] init] autorelease];
        account.accountName = @"hs";
        account.accountPassCode = @"123456";
        account.registrationDate = @"2007-9-8 17:56:34";
        
        //设置用户跟账号关联
        zs.account = account;
        
        // 创建微博对象
        /*
         * 张三在2010-8-8 9：23：44的时候， 发布一条微博
         * 文字内容  @“今天心情不错”
         * 图片 @“goodDay.png”
         * 发表时间
         * 作者
         * 被转发的微博
         * 评论数 100
         * 转发数 290
         * 点赞数 2000
         */
        Microblog *blog = [[[Microblog alloc] init] autorelease];
        blog.postDate = @"2015-8-8 13:45:23";
        blog.textContent = @"今天心情不错";
        blog.image = @"goodDay.png";
        blog.user = zs;
        blog.reposts = 290;
        blog.comments = 100;
        blog.likes = 2000;
        
        //----------------------------------------
        // 创建用户李四
        User *lisi = [[[User alloc] init] autorelease];
        lisi.name = @"李四";
        lisi.birthday = (Birthday){2007,9,8,17,56,34};
        
        // 账号2
        Account *account2 = [[[Account alloc] init] autorelease];
        account2.registrationDate = @"2006-9-8 19：26：54";
        account2.accountName = @"lisiitcast";
        account2.accountPassCode = @"654321";
        
        // 设置用户lisi 与账号account2关联
        lisi.account = account2;
        
        // 再创建一条微博
        Microblog *blog2 = [[[Microblog alloc] init] autorelease];
        blog2.postDate = @"2011-8-8 20：47：09";
        blog2.textContent = @"今天心情确实不错";
        blog2.referenceBlog = blog;
        blog2.comments = 10;
        blog2.likes = 20;
        blog2.reposts = 200;
        blog2.user = lisi;
        
        
        
    }
    return 0;
}
