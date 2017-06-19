//
//  ViewController.m
//  mytestOcBlock2
//
//  Created by chang on 2017/6/19.
//  Copyright © 2017年 changname. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

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
- (IBAction)showMessage:(id)sender {
    UIAlertController* pop;
    pop = [UIAlertController alertControllerWithTitle:@"警告" message:@"Hello" preferredStyle:UIAlertControllerStyleAlert];
    

    
    [self presentViewController:pop animated:YES completion:^{
        NSBundle* bundle;
        bundle = [NSBundle mainBundle];
        NSString* music_path;
        music_path = [bundle pathForResource:@"bell" ofType:@"mp3"];
        NSData* mp3_data;
        mp3_data = [NSData dataWithContentsOfFile:music_path];
        player = [[AVAudioPlayer alloc]initWithData:mp3_data error:nil];
        [player prepareToPlay];
        [player play];
    }];
    
}


@end
