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
    self.label3 = [[UILabel alloc] initWithFrame:CGRectMake(250, 150, 100, 60)];
    self.label3.font = [UIFont boldSystemFontOfSize:30];
    self.label3.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.label3];
    [_label3 release];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(go) userInfo:nil repeats:YES];
    [self.timer fire];
}
- (void)go
{
    NSArray *arr = @[@"王霄", @"于海莹", @"任成", @"王佐文", @"梁志隆", @"巢鑫", @"刘新宇", @"曹晓雨", @"周磊", @"姚斌", @"张金峰", @"刘峻豪", @"李冬阳", @"朱硕", @"孔欢欢", @"宋绪玮", @"彭安东", @"刘明洋", @"秦虎坡", @"胡佳俊", @"张闯", @"白宇", @"王岩", @"孙亚男", @"梁辉", @"宋梅", @"张维扬", @"陈思羽", @"金锡珍", @"吴琼", @"唐超", @"金宝泉", @"李涵", @"苏明山", @"王建业", @"庄振峰", @"刘宝武", @"赵佟越", @"潘忠敏", @"黄灿辉", @"聂浩楠", @"甘露", @"袁园", @"武建平", @"赵鹤"];
    NSInteger temp = arc4random() % arr.count;
    self.label.text = arr[temp];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
