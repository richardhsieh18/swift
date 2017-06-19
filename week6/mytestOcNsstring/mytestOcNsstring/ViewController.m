//
//  ViewController.m
//  mytestOcNsstring
//
//  Created by chang on 2017/6/19.
//  Copyright © 2017年 changname. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextView *web_data;

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

- (IBAction)get_data:(UIButton *)sender {
    
    NSString* data_from_web;
    NSURL* url;
    NSError* err;
    url = [NSURL URLWithString:@"http://210.65.0.71/m/w/W26.htm"];
    data_from_web = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:&err];
    if(err == nil){
         //NSLog(@"%@", data_from_web);
        self.web_data.text = data_from_web;
        NSRange range_h2_begin = [data_from_web rangeOfString:@"<h2>"];
        NSLog(@"<h2>%ld-----%ld",range_h2_begin.location, range_h2_begin.length);
        
        NSRange range_h2_end = [data_from_web rangeOfString:@"</h2>"];
        NSLog(@"</h2>%ld-----%ld",range_h2_end.location, range_h2_end.length);
        
        NSRange iWant1;
        iWant1.location = range_h2_begin.location;
        iWant1.length = range_h2_end.length - range_h2_begin.length;
        NSString * xyz = [data_from_web substringWithRange:iWant1];
        NSLog(@"%@", xyz);
        
    }else{
        NSLog(@"%@", [err description]);
    }

}
@end
