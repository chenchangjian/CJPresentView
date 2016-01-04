//
//  ViewController.m
//  CJPresentView
//
//  Created by ccj on 16/1/4.
//  Copyright © 2016年 ccj. All rights reserved.
//

#import "ViewController.h"
#import "CJPresentView.h"
#import "UIView+CCJExtension.h"

//获取设备的物理高度
#define ScreenHeight [UIScreen mainScreen].bounds.size.height
//获取设备的物理宽度
#define ScreenWidth [UIScreen mainScreen].bounds.size.width

@interface ViewController ()

@property (strong, nonatomic) CJPresentView *PresentView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.PresentView.viewY = ScreenHeight;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CJPresentView *)PresentView
{
    if (!_PresentView)
    {
        _PresentView = [CJPresentView viewFromXib];
    }
    return _PresentView;
}

- (IBAction)presentView:(UIButton *)sender
{
    if (self.PresentView.viewY == ScreenHeight)
    {
        self.PresentView.x = 0;
        // 设置这个Xib 一开始在屏幕的底部(这样能和键盘的动画保持同步)
        self.PresentView.y = ScreenHeight;
        self.PresentView.width = ScreenWidth;
        self.PresentView.height = ScreenHeight * 0.7;
        
        [self.view addSubview:self.PresentView];
        
        [self.PresentView animeData];
        
    }
    

    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSArray *array = [touches allObjects];
    //    CGFloat height = [[array lastObject] locationInView:self.backImageView].y;
    CGFloat height = [[array lastObject] locationInView:self.view].y;
    //     [[array lastObject] locationInView:self.backImageView].y >= ScreenHeight * 0.3
    
    if (self.PresentView.viewY == ScreenHeight || height >= ScreenHeight * 0.3)
    {
        
    }
    else
    {
        [self.PresentView completeCLick:nil];
    }
    
    
}
@end
