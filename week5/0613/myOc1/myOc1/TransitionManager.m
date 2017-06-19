//
//  transitionManager.m
//  myOc1
//
//  Created by chang on 2017/6/14.
//  Copyright © 2017年 changname. All rights reserved.
//

#import "TransitionManager.h"

@implementation TransitionManager

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    UIView* container = transitionContext.containerView;
    UIView* fromView = [transitionContext viewForKey:UITransitionContextFromViewKey];
    UIView* toView = [transitionContext viewForKey:UITransitionContextToViewKey];
    CGAffineTransform offScreenRight;
    CGAffineTransformTranslate(offScreenRight, container.frame.size.width, 0);
    CGAffineTransform offScreenLeft;
    CGAffineTransformTranslate(offScreenLeft, -container.frame.size.width, 0);
    
    if(self.presenting){
        toView.transform = offScreenRight;
    }else{
        toView.transform = offScreenLeft;
    }
    
    [container addSubview:toView];
    [container addSubview:fromView];
    
    int duration = [self transitionDuration:transitionContext];
    
    [UIView animateWithDuration:duration
                            delay:0.5
                            options:UIViewAnimationOptionCurveEaseInOut
                            animations:^{
                                if(self.presenting){
                                    fromView.transform = offScreenLeft;
                                }else{
                                    fromView.transform = offScreenRight;
                                }
                                toView.transform = CGAffineTransformIdentity;
                            }
                            completion:^(BOOL abc){
                                [transitionContext completeTransition:abc];
                            }];
}

-(NSTimeInterval)transitionDuration:(id<UIViewControllerAnimatedTransitioning>)transitionContext{
    return 1;
    
}

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    self.presenting = true;
    return self;
}

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
    self.presenting = false;
    return self;
}

@end
