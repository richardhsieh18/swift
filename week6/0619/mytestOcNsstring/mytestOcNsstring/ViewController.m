//
//  ViewController.m
//  mytestOcNsstring
//
//  Created by chang on 2017/6/19.
//  Copyright © 2017年 changname. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextView *web_data;
@property (strong, nonatomic) IBOutlet UITextView *warning;
@property (strong, nonatomic) IBOutlet UITextView *message;
@property (strong, nonatomic) IBOutlet UIImageView *image1;


@end

@implementation ViewController

AVAudioPlayer* player;

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
        iWant1.location = range_h2_begin.location + range_h2_begin.length;
        iWant1.length = range_h2_end.location - (range_h2_begin.location + range_h2_begin.length);
        NSString * xyz = [data_from_web substringWithRange:iWant1];
        NSLog(@"%@", xyz);
        
        //取<p>的文字
        
        NSRange range_p_begin = [data_from_web rangeOfString:@"<p>"];
        NSRange range_p_end = [data_from_web rangeOfString:@"</p></div>"];
        
        NSRange iWant2;
        iWant2.location = range_p_begin.location + range_p_begin.length;
        iWant2.length = range_p_end.location - (range_p_begin.location + range_p_begin.length);
        NSString * xyz2 = [data_from_web substringWithRange:iWant2];
        NSLog(@"%@", xyz2);

        self.warning.text = xyz;
        self.message.text = xyz2;
        

        
        NSRange alert = [xyz rangeOfString:@"解除"];
        if(alert.length != 0){
            
//            NSURL* url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource: @"rainbow" ofType:@"mp3"]];
//            player = [[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil];
//            [player play];
            NSData* rainbow = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://icons.iconarchive.com/icons/martz90/hex/512/weather-2-icon.png"]options:NSDataReadingUncached error:&err];
            self.image1.image = [[UIImage alloc]initWithData:rainbow];
            if(err != nil){
                NSLog(@"%@",err);
            }
        
        }
        
    }else{
        NSLog(@"%@", [err description]);
    }

}
@end
