//
//  ViewController.m
//  MyScrollView
//
//  Created by Philip Ha on 2016-09-19.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) UIView *                rootView;
@property (nonatomic, weak) NSLayoutConstraint *    rootViewHeight;
@property (nonatomic, weak) NSLayoutConstraint *    rootViewWidth;
@property (nonatomic, weak) NSLayoutConstraint *    rootViewY;

@property (nonatomic, weak) UIView *                redBox;
@property (nonatomic, weak) UIView *                greenBox;
@property (nonatomic, weak) UIView *                yellowBox;
@property (nonatomic, weak) UIView *                blueBox;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *rootView = [[UIView alloc] initWithFrame:CGRectZero];
    rootView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:rootView];
    self.rootView = rootView;
    self.rootView.backgroundColor = [UIColor magentaColor];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:rootView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    
//    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:rootView
//                                                          attribute:NSLayoutAttributeCenterY
//                                                          relatedBy:NSLayoutRelationEqual
//                                                             toItem:self.view
//                                                          attribute:NSLayoutAttributeCenterY
//                                                         multiplier:1.0
//                                                           constant:0.0]];
    
    NSLayoutConstraint *rootViewY = [NSLayoutConstraint constraintWithItem:rootView
                                                                      attribute:NSLayoutAttributeCenterY
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:self.view
                                                                      attribute:NSLayoutAttributeCenterY
                                                                     multiplier:1.0
                                                                       constant:0.0];

    
    
    NSLayoutConstraint *rootViewHeight = [NSLayoutConstraint constraintWithItem:rootView
                                                                         attribute:NSLayoutAttributeHeight
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:self.view
                                                                         attribute:NSLayoutAttributeHeight
                                                                        multiplier:1.0
                                                                          constant:0.0];
    
    NSLayoutConstraint *rootViewWidth = [NSLayoutConstraint constraintWithItem:rootView
                                                                        attribute:NSLayoutAttributeWidth
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:self.view
                                                                        attribute:NSLayoutAttributeWidth
                                                                       multiplier:1.0
                                                                         constant:0.0];
    
    [self.view addConstraint:rootViewHeight];
    [self.view addConstraint:rootViewWidth];
    [self.view addConstraint:rootViewY];
    
    self.rootViewHeight = rootViewHeight;
    self.rootViewWidth = rootViewWidth;
    self.rootViewY = rootViewY;

    
//    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    UIView *redBox = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redBox.backgroundColor = [UIColor redColor];
    [self.rootView addSubview:redBox];
    
//    [array addObject:redBox];
    
    UIView *greenBox = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenBox.backgroundColor = [UIColor greenColor];
    [self.rootView addSubview:greenBox];
//    [array addObject:greenBox];
    
    UIView *blueBox = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueBox.backgroundColor = [UIColor blueColor];
    [self.rootView addSubview:blueBox];
//    [array addObject:blueBox];
    
    UIView *yellowBox = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowBox.backgroundColor = [UIColor yellowColor];
    [self.rootView addSubview:yellowBox];
//    [array addObject:yellowBox];

}

-(void)viewDidAppear:(BOOL)animated{
    
    self.rootViewY.constant -= 100;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
