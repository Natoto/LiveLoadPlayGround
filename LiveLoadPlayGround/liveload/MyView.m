//
//  MyView.m
//  DyamkInjector
//
//  Created by boob on 2018/9/28.
//  Copyright © 2018年 booob. All rights reserved.
//

#import "MyView.h"
#import "DyamkEventTool.h"
#import "MOSButton.h"
#import <objc/runtime.h>

#define CBGetClass(classname) objc_getClass(#classname)

@interface MyView()
@property (nonatomic, strong) UIButton * btn;
@property (nonatomic, strong) UILabel * lbl;
@property (nonatomic, strong) UIImageView * imageView;
//@property (nonatomic, strong) MOSButton * mosbutton;

@end

@implementation MyView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.lbl];
        [self addSubview:self.btn];
        [self addSubview:self.imageView];
        [self addSubview:self.mosbutton];
    }
    return self;
}
-(IBAction)buttonTap2:(id)sender{

    NSLog(@"点击了。。。。");
    [[[UIAlertView alloc] initWithTitle:@"提示" message:@"点击了按钮" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
}

- (UILabel *)lbl {
    if (!_lbl) {
        _lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.bounds.size.width, 60)];
        _lbl.text = @"this is live load playground this is live load playground this is live load playground this is live load playgroundthis is live load playground this is live load playgroundthis is live load playgroundthis is live load playgroundthis is live load playgroundthis is live load playgroundthis is live load playgroundthis is live load playgroundthis is live load playground";
        _lbl.numberOfLines = 0;
        _lbl.lineBreakMode = NSLineBreakByWordWrapping;
        _lbl.font = [UIFont systemFontOfSize:15];
    }
    return _lbl;
}

- (UIButton *)btn {
    if (!_btn) {
        _btn = [UIButton buttonWithType:UIButtonTypeSystem];
        _btn.frame = CGRectMake(0, 80, 100, 40);
        [_btn setTitle:@"touch me" forState:UIControlStateNormal];
        _btn.backgroundColor = [UIColor redColor];
        [_btn addTarget:self action:@selector(buttonTap2:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn;
}

//- (MOSButton *)mosbutton {
//    if (!_mosbutton) {
//        CBGetClass(MOSButton);
//        _mosbutton = [CBGetClass(MOSButton) buttonWithType:UIButtonTypeCustom];
//        [_mosbutton setImage:[CBGetClass(MOSButton) mos_RandomImage] forState:UIControlStateNormal];
//        [self addSubview:_mosbutton];
//        _mosbutton.frame = CGRectMake(0, 40, 50, 50);
//    }
//    return _mosbutton;
//}
@end
