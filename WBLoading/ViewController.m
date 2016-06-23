//
//  ViewController.m
//  WBLoading
//
//  Created by tuhui－03 on 16/6/23.
//  Copyright © 2016年 wb. All rights reserved.
//

#import "ViewController.h"
#import "WBLoadingView.h"
@interface ViewController ()
{
    WBLoadingView *_loadView;

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initLoadingView];
    
}
-(void)initLoadingView
{
    _loadView=[[WBLoadingView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-40, self.view.frame.size.height/2-50, 80, 100)];
    _loadView.lineWidth=2;
    _loadView.lineColor=[UIColor redColor];
    _loadView.backgroundColor=[UIColor whiteColor];
    
    [self.view addSubview:_loadView];
    
}

@end
