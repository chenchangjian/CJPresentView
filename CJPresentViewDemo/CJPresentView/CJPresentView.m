//
//  CJPresentView.m
//  CJPresentView
//
//  Created by ccj on 16/1/4.
//  Copyright © 2016年 ccj. All rights reserved.
//

#import "CJPresentView.h"
#import "UIView+CCJExtension.h"

//获取设备的物理高度
#define ScreenHeight [UIScreen mainScreen].bounds.size.height
//获取设备的物理宽度
#define ScreenWidth [UIScreen mainScreen].bounds.size.width


@implementation CJPresentView

- (void)animeData
{
    [UIView animateWithDuration:.25 animations:^{
        [self setFrame:CGRectMake(0, ScreenHeight * 0.3, ScreenWidth, ScreenHeight * 0.7)];
        
        self.viewY = self.y;
    } completion:^(BOOL finished) {
        
    }];
}

- (IBAction)completeCLick:(UIButton *)sender
{
    [UIView animateWithDuration:.25 animations:^{
        [self setFrame:CGRectMake(0, ScreenHeight, ScreenWidth, ScreenHeight * 0.7)];
    } completion:^(BOOL finished) {
        self.viewY = ScreenHeight;
    }];
}
@end
