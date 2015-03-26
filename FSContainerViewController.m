//
//  FSContainerViewController.m
//  FSContainerViewControllerDemo1
//
//  Created by qianfeng on 15-3-15.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "FSContainerViewController.h"

@interface FSContainerViewController ()

@end

@implementation FSContainerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //优先显示子视图
    [self.view addSubview:[self.childViewControllers[0] view]];
    
    
    UIViewController * svc = self.childViewControllers[1];
    
    CGRect frame = svc.view.frame;
    
    frame.size.width = self.view.bounds.size.width * 2 / 3;
    svc.view.frame = frame;
    
    [self.view insertSubview:svc.view atIndex:0];
    
    //childviewcontrollers是数组  如何管理子视图控制器 自定义
    
    
    
    
    
}


- (void)showLeftViewController
{
    [UIView animateWithDuration:1 animations:^{
        CGRect frame = [self.childViewControllers[0] view].frame;
        
        frame.origin.x = self.view.bounds.size.width * 2 / 3;
        
        [self.childViewControllers[0] view].frame = frame;
    }];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - rotat
- (BOOL)shouldAutorotate
{
    return YES;
}

//设置支持方向
- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

@end









