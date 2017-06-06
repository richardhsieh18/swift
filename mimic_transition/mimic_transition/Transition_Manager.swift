//
//  Transition_Manager.swift
//  mimic_transition
//
//  Created by chang on 2017/6/6.
//  Copyright © 2017年 changname. All rights reserved.
//

import UIKit

class TransitionManager: NSObject, UIViewControllerAnimatedTransitioning, UIViewControllerTransitioningDelegate{
    
    var presenting:Bool!
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
            // get reference to our fromView, toView and the container view that we should perform the transition in
            let container = transitionContext.containerView
            let fromView = transitionContext.view(forKey: UITransitionContextViewKey.from)!
            let toView = transitionContext.view(forKey: UITransitionContextViewKey.to)!
            
            // set up from 2D transforms that we'll use in the animation
            let offScreenRight = CGAffineTransform(translationX: container.frame.width, y: 0)
            let offScreenLeft = CGAffineTransform(translationX: -container.frame.width, y: 0)
            
            // start the toView to the right of the screen
            if presenting
            {
            toView.transform = offScreenRight
            }else{
            toView.transform = offScreenLeft
            }
            
            // add the both views to our view controller
            container.addSubview(toView)
            container.addSubview(fromView)
            
            // get the duration of the animation
            // DON'T just type '0.5s' -- the reason why won't make sense until the next post
            // but for now it's important to just follow this approach
            let duration = self.transitionDuration(using: transitionContext)
            
            // perform the animation!
            // for this example, just slid both fromView and toView to the left at the same time
            // meaning fromView is pushed off the screen and toView slides into view
            // we also use the block animation usingSpringWithDamping for a little bounce
            /*
            UIView.animateWithDuration(duration, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.8, options: nil, animations: {
                
                fromView.transform = offScreenLeft
                toView.transform = CGAffineTransformIdentity
                
            }, completion: { finished in
                
                // tell our transitionContext object that we've finished animating
                transitionContext.completeTransition(true)
                
            })
    */
        UIView.animate(
                        withDuration: duration,
                        delay: 0.0,
                        usingSpringWithDamping: 0.6, initialSpringVelocity: 0.8,
                        options: UIViewAnimationOptions.curveEaseInOut,
                        animations: {
                            if self.presenting{
                                fromView.transform = offScreenLeft
                            }else{
                                fromView.transform = offScreenRight
                            }
                           toView.transform = .identity },
                        completion: {abc in transitionContext.completeTransition(abc)}
        )
        
    }
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 5
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        self.presenting = false
        return self
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        self.presenting = true
        return self
    }
}
