//
//  FSRootViewController.m
//  FSContainerViewControllerDemo1
//
//  Created by qianfeng on 15-3-15.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "FSRootViewController.h"
#import "FSContainerViewController.h"

@interface FSRootViewController ()

@end

@implementation FSRootViewController

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
    self.view.backgroundColor = [UIColor greenColor];
    UIButton * button = [[UIButton alloc] initWithFrame:CGRectMake(10, 100, 40, 40)];
    button.backgroundColor = [UIColor whiteColor];
    
    [button addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    [button release];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)onClick:(UIButton *)button
{
    //找出另一视图
    UIViewController * svc = self.parentViewController.childViewControllers[1];
//    //使用 官方方法
//    [self.parentViewController transitionFromViewController:self toViewController:svc duration:1 options:0 animations:nil completion:nil];
    
    FSContainerViewController * cvc = (id)self.parentViewController;
    
    [cvc showLeftViewController];

    
}

@end



















