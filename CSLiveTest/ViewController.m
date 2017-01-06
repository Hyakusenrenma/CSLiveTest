//
//  ViewController.m
//  CSLiveTest
//
//  Created by Avalon on 2017/1/4.
//  Copyright © 2017年 Avalon. All rights reserved.
//

#import "ViewController.h"
#import "IJKCommon.h"
#import "IJKMoviePlayerViewController.h"
#import "LFLiveKit.h"
#import "LFLivePreview.h"

@interface ViewController () <UITextViewDelegate>

@property(nonatomic,strong) UITextView *textView;

@end

@implementation ViewController


- (instancetype)init {
    self = [super init];
    if (self) {
        self.title = @"Input URL";
        
        [self.navigationItem setRightBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"Play" style:UIBarButtonItemStyleDone target:self action:@selector(onClickPlayButton)]];
        [self.navigationItem setLeftBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"Up" style:UIBarButtonItemStyleDone target:self action:@selector(onClickUploadButton)]];

    }
    return self;
}

- (void)onClickUploadButton {
    UIViewController *vc = [[UIViewController alloc]init];
    [vc.view addSubview:[[LFLivePreview alloc] initWithFrame:self.view.bounds]];
    [self.navigationController pushViewController:vc animated:true];
}



- (void)viewDidLoad {
    _textView = [[UITextView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    _textView.font = BigSize;
    [self.view addSubview:_textView];
}

- (void)onClickPlayButton {
    NSURL *url = [NSURL URLWithString:self.textView.text];
    NSString *scheme = [[url scheme] lowercaseString];
    
    if ([scheme isEqualToString:@"http"]
        || [scheme isEqualToString:@"https"]
        || [scheme isEqualToString:@"rtmp"]) {
        [IJKVideoViewController presentFromViewController:self withTitle:[NSString stringWithFormat:@"URL: %@", url] URL:url completion:^{
            //            [self.navigationController popViewControllerAnimated:NO];
        }];
    }
}

- (void)textViewDidEndEditing:(UITextView *)textView {
    [self onClickPlayButton];
}

@end
