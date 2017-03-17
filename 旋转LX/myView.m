//
//  myView.m
//  旋转LX
//
//  Created by qf1 on 15/11/3.
//  Copyright (c) 2015年 莫炯昌. All rights reserved.
//

#import "myView.h"
#import <QuartzCore/QuartzCore.h>

@implementation myView


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        // Initialization code
        //第一个按钮
        UIButton *onebut = [[UIButton alloc] initWithFrame:CGRectMake(0.0, 0.0, frame.size.width, frame.size.height)];
        [onebut setShowsTouchWhenHighlighted:YES];
        [onebut setBackgroundColor:[UIColor redColor]];
        [onebut setImage:[UIImage imageNamed:@"leadbar_icon1"] forState:UIControlStateNormal];
        [onebut setTag:100];
        [onebut addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:onebut];
        
        //第二个按钮
        UIButton *towbut = [[UIButton alloc] initWithFrame:CGRectMake(0.0, 0.0, frame.size.width, frame.size.height)];
        [towbut setShowsTouchWhenHighlighted:YES];
        [towbut setBackgroundColor:[UIColor blueColor]];
        [towbut setImage:[UIImage imageNamed:@"leadbar_icon2"] forState:UIControlStateNormal];
        [towbut setTag:101];
        [towbut addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:towbut];
        
    }
    return self;
}

-(void)buttonClicked:(UIButton *)button{
    UIButton *towbut = (UIButton *)[self viewWithTag:101];
    UIButton *onebut = (UIButton *)[self viewWithTag:100];
    CATransition *animation = [CATransition animation];
    animation.duration = 0.8;
    animation.type = @"cube";
    animation.subtype = kCATransitionFromRight;
    //找到最上层的View
    UIButton *lastView = (UIButton *)[self.subviews lastObject];
    if (lastView.tag==101)
        [self bringSubviewToFront:onebut];
    else if (lastView.tag==100)
        [self bringSubviewToFront:towbut];
    [self.layer addAnimation:animation forKey:@"animation"];

}


@end
