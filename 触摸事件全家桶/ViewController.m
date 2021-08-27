//
//  ViewController.m
//  触摸事件全家桶
//
//  Created by dida on 2021/8/25.
//

#import "ViewController.h"
#import "AView.h"
#import "BView.h"
#import "CView.h"
#import "AButton.h"
#import "ATableView.h"
#import "ATapGestureRecognizer.h"
#import "BButton.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *backView = [UIView new];
    backView.frame = self.view.bounds;
    ATapGestureRecognizer *tap = [[ATapGestureRecognizer alloc] initWithTarget:self action:@selector(actionTapView)];
    tap.cancelsTouchesInView = NO;
    [backView addGestureRecognizer:tap];
    [self.view addSubview:backView];
    
    ATableView *tableView = [[ATableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [backView addSubview:tableView];
    
    AButton *btn = [AButton new];
    btn.frame = CGRectMake(100, CGRectGetMaxY(self.view.frame)-50, 200, 50);
    [btn setTitle:@"点我" forState:UIControlStateNormal];
    btn.backgroundColor = UIColor.redColor;
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [backView addSubview:btn];
    
    BButton *btn2 = [BButton new];
    btn2.frame = CGRectMake(0, 0, 200, 50);
    [btn2 setTitle:@"点我" forState:UIControlStateNormal];
    btn2.backgroundColor = UIColor.blueColor;
    [btn2 addTarget:self action:@selector(btn2Click) forControlEvents:UIControlEventTouchUpInside];
    [btn addSubview:btn2];
}

- (void)actionTapView {
    NSLog(@"点击backView的手势");
}
- (void)btnClick {
    NSLog(@"点我");
}
- (void)btn2Click {
    NSLog(@"点我2");
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"id"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"id"];
    }
    cell.textLabel.text = @"我是cell";
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"点击了%zd行",indexPath.row);
}
///寻找第一响应者&响应的链条
- (void)findFirstResponder {
    AView *a1 = [AView new];
    a1.backgroundColor = UIColor.redColor;
    a1.frame = CGRectMake(100, 200, 100, 100);
    [self.view addSubview:a1];
    
    BView *a2 = [BView new];
    a2.backgroundColor = UIColor.greenColor;
    a2.frame = CGRectMake(150, 250, 100, 100);
    [self.view addSubview:a2];
    
    CView *c = [CView new];
    c.backgroundColor = UIColor.blueColor;
    c.frame = CGRectMake(50, 50, 50, 50);
    [a2 addSubview:c];
}


@end
