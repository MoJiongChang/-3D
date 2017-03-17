//
//  ViewController.m
//  旋转LX
//
//  Created by qf1 on 15/11/3.
//  Copyright (c) 2015年 莫炯昌. All rights reserved.
//

#import "ViewController.h"
//#import <QuartzCore/QuartzCore.h>
#import "myView.h"
@interface ViewController ()

//@property(nonatomic,strong)UIView *View;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.view = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.view.backgroundColor = [UIColor whiteColor];
    
    myView *myview = [[myView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-50, self.view.frame.size.height/2-100, 100.0, 100.0)];
    [self.view addSubview:myview];
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
