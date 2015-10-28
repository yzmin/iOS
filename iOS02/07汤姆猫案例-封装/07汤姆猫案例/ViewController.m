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
    [self startAnimating:81 picName:@"drink"];
    
    
}
//放p
- (IBAction)fart {
    [self startAnimating:28 picName:@"fart"];
}

- (IBAction)knockout {
[self startAnimating:81 picName:@"knockout"];
}

//执行动画的方法
- (void)startAnimating:(int)count picName:(NSString *)picName
{
    //如果当前图片在播放动画时，则立刻返回
    if([self.imgViewCat isAnimating])
    {
        return;
    }
    
    //1 图片加载到数组中
     NSMutableArray *arrayM = [NSMutableArray array];
    
    for(int i = 0;i < count; ++i)
    {
        //拼接图片名称
        NSString *imgName = [NSString stringWithFormat:@"%@_%02d.jpg",picName,i];
        
        //获取图片
        //通过imageNamed 这种方式加载图片，加载好的图片会一直保存在内存中，不会释放，这样下使用同样的图片的时候，就不需要再重新加载了，缺点：如果加载了大量的图片在内存中，没有释放，导致应用程序占用内存过大（缓存）
        //使用这样的加载，内存会有缓存机制，被置空没有强指针指向也不会释放内存
        //UIImage *imgCat = [UIImage imageNamed:imgName];
        //解决：换一种加载图片的方式，不要使用缓存
        //这里的参数不能再传递图片的名称，而是完整的路径
        NSString *path = [[NSBundle mainBundle] pathForResource:imgName ofType:nil];
        
        UIImage *imgCat = [UIImage imageWithContentsOfFile:path];
        
        //加载到数组中
        [arrayM addObject:imgCat];
    }
    
    //2 设置动画集合
    self.imgViewCat.animationImages = arrayM;
    
    //3 设置动画持续时间
    self.imgViewCat.animationDuration = arrayM.count* 0.1;
    
    //4 设置重复次数
    self.imgViewCat.animationRepeatCount = 1;
    
    //5 播放动画
    [self.imgViewCat startAnimating];
    
    //清空图片集合
    //这样写的问题是，当动画启动以后，动画还没开始执行，就已经被释放了
    //self.imgViewCat.animationImages = nil;
    
    //需要延时一段时间执行，再释放图片
    //设置图片框在调用 setAnimationImages:nil 方法的时候延时执行
    [self.imgViewCat performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:arrayM.count* 0.1];
}
@end
