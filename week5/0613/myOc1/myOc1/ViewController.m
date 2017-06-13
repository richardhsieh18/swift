//
//  ViewController.m
//  myOc1
//
//  Created by chang on 2017/6/13.
//  Copyright © 2017年 changname. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)login:(UIButton *)sender {
    
    
}


- (IBAction)reset:(UIButton *)sender {
    
    NSBundle* bundle;
    bundle = [NSBundle mainBundle];
    
    
    NSString* data_path;
    [bundle pathForResource:@"members" ofType:@"dat"];
    //NSLog(@"%@", data_path);
    
    
}

@end
