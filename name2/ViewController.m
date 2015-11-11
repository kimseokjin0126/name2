//
//  ViewController.m
//  name2
//
//  Created by Kim진이 on 15/11/11.
//  Copyright © 2015年 www.lanou3g.com蓝鸥科技. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, retain) UILabel *label;
@property (nonatomic, retain) UILabel *label2;
@property (nonatomic, retain) UILabel *label3;
@property (nonatomic, retain) NSTimer *timer;
@property (nonatomic, retain) NSTimer *timer2;
@property (nonatomic, retain) NSTimer *timer3;
@end

@implementation ViewController
- (void)dealloc
{
    [_label release];
    [_label2 release];
    [_label3 release];
    [_timer release];
    [_timer2 release];
    [_timer3 release];
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(30, 150, 100, 60)];
    self.label.font = [UIFont boldSystemFontOfSize:30];
    self.label.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.label];
    [_label release];
    self.label2 = [[UILabel alloc] initWithFrame:CGRectMake(130, 150, 120, 60)];
    self.label2.font = [UIFont boldSystemFontOfSize:30];
    self.label2.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.label2];
    [_label2 release];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
