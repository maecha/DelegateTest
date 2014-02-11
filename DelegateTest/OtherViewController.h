//
//  OtherViewController.h
//  DelegateTest
//
//  Created by 前田 誠也 on 2014/02/11.
//  Copyright (c) 2014年 Seiya Maeda. All rights reserved.
//

#import <UIKit/UIKit.h>

@class OtherViewController;

@protocol OtherViewControllerDelegate <NSObject>

- (void)otherViewControllerDelegateBackToViewControllerFinished:(OtherViewController *)controller;

@end

@interface OtherViewController : UIViewController

@property (weak, nonatomic) id <OtherViewControllerDelegate> delegate;

- (IBAction)backView:(id)sender;

@end
