//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Philip Ha on 2016-09-19.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView()

@property (strong, nonatomic) UIPanGestureRecognizer *panGesture;

@property (assign, nonatomic) CGPoint panStart;

@end

@implementation MyScrollView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _contentSize = CGRectZero;
        
        _panStart = CGPointZero;
        
        _panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGesture:)];
        
        _panGesture.minimumNumberOfTouches = 1;
        
        [self addGestureRecognizer:_panGesture];
        
    }
    
    return self;
}

- (void)panGesture:(UIPanGestureRecognizer *)sender {
    
    
    CGRect frame = self.frame;
    
    CGRect originalFrame = frame;
    
    if (sender.state == UIGestureRecognizerStateChanged) {
        
        frame.origin.x = [sender translationInView:self].x - self.panStart.x;
        frame.origin.y = [sender translationInView:self].y - self.panStart.y;
      
    }
    
    if (frame.origin.x > 0){
        
        frame.origin.x = 0;
        
    }
    
    if (frame.origin.x <  frame.size.width - 320) {
        
        frame.origin.x = frame.size.width - 320;
        
    }
    
    if (frame.origin.y < self.contentSize.size.height - 950) {
    
        frame.origin.y = self.contentSize.size.height - 950;
    
    }
    
    if (frame.origin.y > 0){
        
        frame.origin.y = 0;
        
    }
    
    self.frame = frame;
    
    if (CGRectContainsRect(self.contentSize, frame)) {
        
        self.frame = frame;
        
        
    }
    
    frame = originalFrame;
}

-(void)addSubview:(UIView *)view{
    
    [super addSubview:view];
}



/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
