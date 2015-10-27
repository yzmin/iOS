//
//  ViewController.m
//  02按钮的使用介绍
//
//  Created by yezhimin on 15/10/27.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)up;
- (IBAction)down:(id)sender;
- (IBAction)left;
- (IBAction)right;
@property (weak, nonatomic) IBOutlet UIButton *btnIcon;
- (IBAction)big;
- (IBAction)small;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)up {
    //获取按钮的y坐标的值，让y的值递减，然后再新的值赋给按钮y
    //获取头像按钮的坐标
    //获取按钮原始frame值
    CGRect originFrame = self.btnIcon.frame;
    originFrame.origin.y -= 10;
    self.btnIcon.frame = originFrame;
    NSLog(@"上");
}

- (IBAction)down:(id)sender {
    //1) 获取原始frame值
    CGRect originFrame = self.btnIcon.frame;
    //2）修改frame值
    originFrame.origin.y += 10;
    //3）重新把 frame值赋值给按钮
    self.btnIcon.frame = originFrame;
    NSLog(@"下");
}

- (IBAction)left {
    //1) 获取原始frame值
    CGRect originFrame = self.btnIcon.frame;
    //2）修改frame值
    originFrame.origin.x -= 10;
    //3）重新把 frame值赋值给按钮
    self.btnIcon.frame = originFrame;
    NSLog(@"左");
}

- (IBAction)right {
    //1) 获取原始frame值
    CGRect originFrame = self.btnIcon.frame;
    //2）修改frame值
    originFrame.origin.x += 10;
    //3）重新把 frame值赋值给按钮
    self.btnIcon.frame = originFrame;
    //错误的写法
    //self.btnIcon.frame.origin.y -= 10;
    NSLog(@"右");
}
- (IBAction)big {
    NSLog(@"bigger");
    //获取原始的frame
    CGRect originFrame = self.btnIcon.frame;
    //修改frame
    originFrame.size.width += 10;
    originFrame.size.height += 10;
    //originFrame.size = CGSizeMake(originFrame.size.width + 10, originFrame.size.height + 10);
    //重新赋值
    self.btnIcon.frame = originFrame;
}

- (IBAction)small {
    NSLog(@"smaller");
    //获取原始的frame
    CGRect originFrame = self.btnIcon.frame;
    //修改frame
    originFrame.size.width -= 10;
    originFrame.size.height -= 10;
    //originFrame.size = CGSizeMake(originFrame.size.width - 10, originFrame.size.height - 10);
    //重新赋值
    self.btnIcon.frame = originFrame;
}
@end
