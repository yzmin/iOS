//
//  ViewController.m
//  02transform属性介绍
//
//  Created by yezhimin on 15/10/28.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btnIcon;
- (IBAction)move;
- (IBAction)scale;
- (IBAction)rotate;
- (IBAction)goBack;

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
//结构体不能直接修改
- (IBAction)move {
    //修改结构体值
    //平移原始的位置－50
//    self.btnIcon.transform = CGAffineTransformMakeTranslation(0, -50) ;//向上平移
    
    //基于一个旧值，再进行平移
    //基于现有的一个值，再进行平移
    self.btnIcon.transform = CGAffineTransformTranslate(self.btnIcon.transform, 0, 50);
    
}

- (IBAction)scale {
    //self.btnIcon.transform = CGAffineTransformMakeScale(1.5, 1.5);
    self.btnIcon.transform = CGAffineTransformScale(self.btnIcon.transform, 1.5, 1.5);
}

- (IBAction)rotate {
    //self.btnIcon.transform = CGAffineTransformMakeRotation(-M_PI_4);
    [UIView animateWithDuration:2.5 animations:^{
        self.btnIcon.transform = CGAffineTransformTranslate(self.btnIcon.transform, 0, 50);
        self.btnIcon.transform = CGAffineTransformScale(self.btnIcon.transform, 1.5, 1.5);
         self.btnIcon.transform = CGAffineTransformRotate(self.btnIcon.transform, M_PI_4);
    }];
   
}

- (IBAction)goBack {
    //清除之前设置的transform属性
    self.btnIcon.transform = CGAffineTransformIdentity;
}
@end
