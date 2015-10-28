//
//  ViewController.m
//  06如何新建plist文件
//
//  Created by yezhimin on 15/10/28.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSDictionary *dict1 = @{@"name":@"张三",@"age":@18,@"height":@180};
    NSDictionary *dict2 = @{@"name":@"李四",@"age":@19,@"height":@175};
    NSDictionary *dict3 = @{@"name":@"麻子",@"age":@22,@"height":@160};
    NSArray *students = @[dict1,dict2,dict3];
    NSLog(@"%@",students);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
