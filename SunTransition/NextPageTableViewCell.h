//
//  NextPageTableViewCell.h
//  SunTransition
//
//  Created by 孙兆楠 on 16/8/13.
//  Copyright © 2016年 孙兆楠. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^Next)();

@interface NextPageTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *aLabel;
@property (nonatomic, copy) Next next;

@end
