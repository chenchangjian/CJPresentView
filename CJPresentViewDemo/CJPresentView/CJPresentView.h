//
//  CJPresentView.h
//  CJPresentView
//
//  Created by ccj on 16/1/4.
//  Copyright © 2016年 ccj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CJPresentView : UIView
@property (assign, nonatomic) CGFloat viewY;

- (void)animeData;
- (IBAction)completeCLick:(UIButton *)sender;
@end
