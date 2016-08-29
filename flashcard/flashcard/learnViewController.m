//
//  learnViewController.m
//  flashcard
//
//  Created by HTK-iMac on 8/20/16.
//  Copyright © 2016 pqhuy1987. All rights reserved.
//

#import "learnViewController.h"
@import WebKit;

@interface learnViewController () <WKNavigationDelegate> {
    UIActivityIndicatorView *spinView;
}

@end

@implementation learnViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupView];
    [self setupWebView];
}

- (void)setupView {
    self.title = @"Learn";
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
}

- (void)setupWebView {
    if (self.title.length > 0) {
        WKWebViewConfiguration *theConfiguration = [[WKWebViewConfiguration alloc] init];
        WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.frame configuration:theConfiguration];
        webView.navigationDelegate = self;
        NSURL *nsurl = [NSURL URLWithString:@"http://flashcard.earthbeatmedia.com/site/"];

        NSURLRequest *nsrequest = [NSURLRequest requestWithURL:nsurl];
        [webView loadRequest:nsrequest];
        [self.view addSubview:webView];
        spinView = [Help createSpinView:self.view];
        [spinView startAnimating];
    }
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    [spinView stopAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
