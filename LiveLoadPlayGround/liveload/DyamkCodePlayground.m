//
//  DyamkCodePlayground.m
//  DyamkInjector
//
//  Created by booob on 22/6/2018.
//  Copyright © 2018 booob. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DyamkUIAspectTool.h"
#import <objc/runtime.h>
#import "DyamkEventTool.h"
#import "MyView.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"

Dyamk_Method_1(void, onClick, id, sender) {
    UIViewController *vc = (UIViewController *)self;
//    UIView *v = [vc.view viewWithTag:1];
//    v.frame = CGRectMake(0, 100, arc4random_uniform(100) + 100, arc4random_uniform(100) + 100);
//    [UIView animateWithDuration:2.0 animations:^{
//        v.backgroundColor = [UIColor yellowColor];
//    } completion:^(BOOL finished) {
//        [vc dismissViewControllerAnimated:YES completion:nil];
//    }];
    [vc dismissViewControllerAnimated:YES completion:nil];
}


void __dyamk_debug_code_goes_here() {
    
    UIViewController *self = dya_presentControllerForDebug();
    self.view.backgroundColor = [UIColor yellowColor];
    MyView *box = [[MyView alloc] initWithFrame:  CGRectMake(100, 250, 300, 300)];
    box.tag = 1;
    box.backgroundColor = [UIColor whiteColor];
    box.center =self.view.center;
    [self.view addSubview:box];
    
    UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [addBtn setTitle:@"Close Me" forState:UIControlStateNormal];
    [addBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    addBtn.frame = CGRectMake(0, 64, 100, 50);
//    addBtn.center = CGPointMake(self.view.bounds.size.width/2., self.view.bounds.size.height/2.);
    [addBtn addTarget:self action:@selector(addClick:) forControlEvents:UIControlEventTouchUpInside];
    Dyamk_AddMethod(UIViewController, @selector(addClick:), onClick, v@:@);
    [self.view addSubview:addBtn];
    
    
}

#pragma clang diagnostic pop


