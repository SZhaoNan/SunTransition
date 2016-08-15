//
//  ViewController.m
//  SunTransition
//
//  Created by 孙兆楠 on 16/8/13.
//  Copyright © 2016年 孙兆楠. All rights reserved.
//

#import "ViewController.h"
#import "NextPageViewController.h"
#import "NextPageTableViewCell.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataArr = [NSMutableArray arrayWithObjects:@"Fade", @"push", @"reveal", @"moveIn", @"cube", @"suckEffect", @"oglFlip", @"rippleEffect", @"pageCurl", @"pageUnCurl", @"cameraIrisHollowOpen", @"cameraIrisHollowClose", @"curlDown", @"curlUp", @"flipFromLeft", @"flipFromRight", nil];
    
    UINib *nib1 = [UINib nibWithNibName:@"NextPageTableViewCell" bundle:nil];
    [self.tableView registerNib:nib1 forCellReuseIdentifier:@"NextPageTableViewCell"];
}

#pragma UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NextPageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NextPageTableViewCell"];
    cell.next = ^void(){
        NextPageViewController *next = [[NextPageViewController alloc] init];
        //创建动画
        CATransition *animation = [CATransition animation];
        //设置运动轨迹的速度
        animation.timingFunction = UIViewAnimationCurveEaseInOut;
        //设置动画类型为立方体动画
        //    animation.type = @"cube";
        animation.type = [NSString stringWithFormat:@"%@", self.dataArr[indexPath.row]];
        //设置动画时长
        animation.duration = 1.0f;
        //设置运动的方向
        animation.subtype =kCATransitionFromRight;
        next.str = self.dataArr[indexPath.row];
        //控制器间跳转动画
        //    <span style="background-color: #888888;">[[UIApplication sharedApplication].keyWindow.layer addAnimation:animation forKey:nil];</span>
        [[UIApplication sharedApplication].keyWindow.layer addAnimation:animation forKey:nil];
        [self presentViewController:next animated:NO completion:nil];
    };
    cell.aLabel.text = [NSString stringWithFormat:@"%@", self.dataArr[indexPath.row]];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45;
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
