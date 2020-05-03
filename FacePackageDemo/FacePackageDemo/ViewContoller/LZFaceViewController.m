//
//  LZFaceViewController.m
//  FacePackageDemo
//
//  Created by yongqiang li on 2020/5/3.
//  Copyright © 2020 yongqiang li. All rights reserved.
//

#import "LZFaceViewController.h"

@interface LZFaceViewController ()<UITextViewDelegate>

@property (strong, nonatomic) UITextView *textView;

@end

@implementation LZFaceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
}

- (UITextView *)textView
{
    if (!_textView) {
        _textView = [[UITextView alloc] initWithFrame:CGRectZero];
        _textView.layer.borderColor = [UIColor grayColor].CGColor;
        _textView.layer.borderWidth = 0.5;
        _textView.delegate = self;
    }
    return _textView;
}

@end
