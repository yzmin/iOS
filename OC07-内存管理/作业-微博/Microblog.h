//
//  Microblog.h
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

/*
微博类 (Microblog)
属性：
 * 文字内容
 * 图片
 * 发表时间 (可以用字符串表示NSString)
 * 作者
 * 被转发的微博
 * 评论数
 * 转发数
 * 点赞数
 */

#import <Foundation/Foundation.h>
@class User;

@interface Microblog : NSObject
//文字内容
@property (nonatomic,retain) NSString *textContent;
//图片
@property (nonatomic,retain) NSString *image;
//发表时间
@property (nonatomic,retain) NSString *postDate;
//作者
@property (nonatomic,retain) User *user;
//被转发的微博
@property (nonatomic,retain) Microblog *referenceBlog;
//评论数
@property (nonatomic,assign) int comments;
//转发数
@property (nonatomic,assign) int reposts;
//点赞数
@property (nonatomic,assign) int likes;
@end
