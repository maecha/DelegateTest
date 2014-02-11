//
//  OtherViewController.m
//  DelegateTest
//
//  Created by 前田 誠也 on 2014/02/11.
//  Copyright (c) 2014年 Seiya Maeda. All rights reserved.
//

#import "OtherViewController.h"

@interface OtherViewController ()

@end

@implementation OtherViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// もどるボタンタップされたとき
- (IBAction)backView:(id)sender
{
    [self.delegate otherViewControllerDelegateBackToViewControllerFinished:self];
}

@end
