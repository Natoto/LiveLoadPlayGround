//
//  ViewController.m
//  LiveLoadDemo
//
//  Created by boob on 2018/9/30.
//  Copyright © 2018年 YY.Inc. All rights reserved.
//

#import "ViewController.h"
#import "DYAEngine.h"

@interface ViewController ()
@property (nonatomic, strong) DYAEngine *dyaEngine;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.dyaEngine = [[DYAEngine alloc] init];
    NSError *dyaError = nil;
    [self.dyaEngine startAtPort:2224 error:&dyaError];
    if (dyaError) {
        NSLog(@"Error: %@", dyaError);
    } else {
        NSLog(@"DYA Server start at 2224");
    }
    [self configureView];
}

-(void)configureView{
    
    [self.view.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    
    self.view.backgroundColor = [UIColor greenColor];
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"click me mememe" forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 100, 200, 30);
    [self.view addSubview:btn];
    
    {
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeSystem];
        [btn setTitle:@"click me mememe" forState:UIControlStateNormal];
        btn.frame = CGRectMake(0, 200, 200, 30);
        [self.view addSubview:btn];
    }
}
-(void)injected {
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
