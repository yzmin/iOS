//
//  ViewController.m
//  07汤姆猫案例
//
//  Created by yezhimin on 15/10/28.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgViewCat;

- (IBAction)drink;
- (IBAction)fart;
- (IBAction)knockout;


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

//喝牛奶的动画
- (IBAction)drink {
    //0）动态加载图片到一个NSArray中
    NSMutableArray *arrayM = [NSMutableArray array];
    
    for(int i = 0;i < 81; ++i)
    {
        //拼接图片名称
        NSString *imgName = [NSString stringWithFormat:@"drink_%02d.jpg",i];
        //获取图片
        UIImage *img = [UIImage imageNamed:imgName];
        //加载到数组中
        [arrayM addObject:img];
    }
    
    
    //1）设置UIImageView(图片框)的animationImages属性，这个属性中包含的就是所有那些要执行动画的图片
    self.imgViewCat.animationImages = arrayM;
    
    //2) 设置动画持续时间
    self.imgViewCat.animationDuration = self.imgViewCat.animationImages.count*0.1;
    //3） 设置动画是否需要重复播放
    self.imgViewCat.animationRepeatCount = 1;
    
    //4) 开启动画
    [self.imgViewCat startAnimating];
    
}
//放p
- (IBAction)fart {
    //1 图片加载到数组中
    NSMutableArray *arrayM = [NSMutableArray array];
    
    for(int i = 0;i < 28; ++i)
    {
        //拼接图片名称
        NSString *imgName = [NSString stringWithFormat:@"fart_%02d.jpg",i];
        //获取图片
        UIImage *img = [UIImage imageNamed:imgName];
        //加载到数组中
        [arrayM addObject:img];
    }

    //2 设置动画集合
    self.imgViewCat.animationImages = arrayM;
    
    //3 设置动画持续时间
    self.imgViewCat.animationDuration = arrayM.count* 0.1;
    
    //4 设置重复次数
    self.imgViewCat.animationRepeatCount = 1;
    
    //5 播放动画
    [self.imgViewCat startAnimating];
}

- (IBAction)knockout {
    //1 图片加载到数组中
    NSMutableArray *arrayM = [NSMutableArray array];
    
    for(int i = 0;i < 81; ++i)
    {
        //拼接图片名称
        NSString *imgName = [NSString stringWithFormat:@"knockout_%02d.jpg",i];
        //获取图片
        UIImage *img = [UIImage imageNamed:imgName];
        //加载到数组中
        [arrayM addObject:img];
    }
    
    //2 设置动画集合
    self.imgViewCat.animationImages = arrayM;
    
    //3 设置动画持续时间
    self.imgViewCat.animationDuration = arrayM.count* 0.1;
    
    //4 设置重复次数
    self.imgViewCat.animationRepeatCount = 1;
    
    //5 播放动画
    [self.imgViewCat startAnimating];}
@end
