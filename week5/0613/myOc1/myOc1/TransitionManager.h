//
//  transitionManager.h
//  myOc1
//
//  Created by chang on 2017/6/14.
//  Copyright © 2017年 changname. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TransitionManager : NSObject<UIViewControllerAnimatedTransitioning, UIViewControllerTransitioningDelegate>

@property BOOL presenting;

@end
