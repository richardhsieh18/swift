//
//  ViewController.h
//  myOc1
//
//  Created by chang on 2017/6/13.
//  Copyright © 2017年 changname. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *account;
@property (weak, nonatomic) IBOutlet UITextField *password;

- (IBAction)login:(UIButton *)sender;
- (IBAction)reset:(UIButton *)sender;


@end

