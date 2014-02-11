//
//  ViewController.m
//  DelegateTest
//
//  Created by 前田 誠也 on 2014/02/11.
//  Copyright (c) 2014年 Seiya Maeda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// OtherViewControllerのデリゲートメソッド
- (void)otherViewControllerDelegateBackToViewControllerFinished:(OtherViewController *)controller
{
    // スタックしてあるビューコントローラに移動（戻ってくる）
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // セグエの識別子がotherViewControllerなら（今回の移動先）
    if ([[segue identifier] isEqualToString:@"otherViewController"])
    {
        // 移動先ビューコントローラのデリゲート先にselfを設定
        [[segue destinationViewController] setDelegate:self];
    }
}

@end
