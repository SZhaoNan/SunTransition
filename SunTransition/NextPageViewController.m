//
//  NextPageViewController.m
//  SunTransition
//
//  Created by 孙兆楠 on 16/8/13.
//  Copyright © 2016年 孙兆楠. All rights reserved.
//

#import "NextPageViewController.h"

@interface NextPageViewController ()

@end

@implementation NextPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)dissBtn:(id)sender {
    //创建动画
    CATransition *animation = [CATransition animation];
    //设置运动轨迹的速度
    animation.timingFunction = UIViewAnimationCurveEaseInOut;
    //设置动画类型为立方体动画
    //    animation.type = @"cube";
    animation.type = [NSString stringWithFormat:@"%@", _str];
    //设置动画时长
    animation.duration = 1.0f;
    //设置运动的方向
    animation.subtype =kCATransitionFromRight;
    //控制器间跳转动画
    //    <span style="background-color: #888888;">[[UIApplication sharedApplication].keyWindow.layer addAnimation:animation forKey:nil];</span>
    [[UIApplication sharedApplication].keyWindow.layer addAnimation:animation forKey:nil];
    [self dismissViewControllerAnimated:NO completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
