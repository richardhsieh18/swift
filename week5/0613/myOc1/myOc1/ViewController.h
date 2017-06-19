//
//  ViewController.h
//  myOc1
//
//  Created by chang on 2017/6/13.
//  Copyright © 2017年 changname. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TransitionManager.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *account;

@property (strong, nonatomic) IBOutlet UITextField *password;
//@property (strong, nonatomic)TransitionManager* xyz;


- (IBAction)login:(UIButton *)sender;

- (IBAction)reset:(UIButton *)sender;

@end

