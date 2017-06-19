//
//  ViewController.m
//  myOc1
//
//  Created by chang on 2017/6/13.
//  Copyright © 2017年 changname. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //self.xyz = [[TransitionManager alloc]init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





- (IBAction)login:(UIButton *)sender {
    
    NSBundle *bundle;
    
    bundle = [NSBundle mainBundle];
    
    NSString *data_path;
    data_path = [bundle pathForResource:@"members" ofType:@"dat"];
    //NSLog(data_path);

    NSString *content;
    content = [NSString stringWithContentsOfFile:data_path encoding:NSUTF8StringEncoding error:nil];
    //NSLog(@"%@", content);
    NSArray *lines;
    lines = [content componentsSeparatedByString:@"\n"];
    //NSLog(@"%@", lines[0]);
    BOOL is_member = NO;
    for(NSString* line in lines){
        NSArray* columns;
        columns = [line componentsSeparatedByString:@","];
        
        if([((NSString*)columns[1]) compare:self.account.text] == NSOrderedSame
           &&
           [((NSString*)columns[2]) compare:self.password.text]  == NSOrderedSame)
                    {
                        NSLog(@"%@",@"是會員");
                        is_member = true;
                    }else{
                        NSLog(@"%@",@"非會員");
                    }
        }
    if(is_member){
        
        //[self performSegueWithIdentifier:@"go" sender:sender];
        
        UIStoryboard* board = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        ViewController2* page2_controller = [board instantiateViewControllerWithIdentifier:@"second"];
        //page2_controller.transitioningDelegate = self.xyz;
        /*
        [UIView beginAnimations:@"bucketsOff" context:nil];
        [UIView setAnimationDuration:2.0];
        [UIView setAnimationDelay:0.5];
        //[UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
        
        
        [self presentViewController:page2_controller animated:true completion:nil];
        [self.view addSubview:page2_controller.view];
        
        [UIView commitAnimations];
         */
        
        CATransition* transition = [CATransition animation];
        transition.duration = 3.0;
        //  http://furnacedigital.blogspot.tw/2012/08/catransition.html
        //transition.type = @"suckEffect";
        [transition setType:@"cube"];
        //transition.type = @"rippleEffect";
        //transition.type = kCATransitionPush;
        transition.subtype = kCATransitionFromLeft;
        //[transition setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
        [self.view.layer addAnimation:transition forKey:@""];
        
        [self.view addSubview:page2_controller.view];
        
    }else{
        UIAlertController* pop;

        pop = [UIAlertController alertControllerWithTitle:@"警告" message:@"你的帳密有誤" preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction* button = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        [pop addAction:button];
        
        [self presentViewController:pop animated:YES completion:nil];
    }

}

- (IBAction)reset:(UIButton *)sender {
}
@end
