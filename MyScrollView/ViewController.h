//
//  ViewController.h
//  MyScrollView
//
//  Created by Philip Ha on 2016-09-19.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyScrollView.h"

@interface ViewController : UIViewController

@property (nonatomic, weak) MyScrollView *          rootView;
@property (nonatomic, weak) NSLayoutConstraint *    rootViewHeight;
@property (nonatomic, weak) NSLayoutConstraint *    rootViewWidth;
@property (nonatomic, weak) NSLayoutConstraint *    rootViewY;

@property (nonatomic, weak) UIView *                redBox;
@property (nonatomic, weak) UIView *                greenBox;
@property (nonatomic, weak) UIView *                yellowBox;
@property (nonatomic, weak) UIView *                blueBox;

@end

