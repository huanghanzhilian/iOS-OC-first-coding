//
//  GTDetailViewController.m
//  first-coding
//
//  Created by 黄继鹏 on 2023/11/22.
//

#import "GTDetailViewController.h"
#import <WebKit/WebKit.h>

@interface GTDetailViewController ()<WKNavigationDelegate>
@property(nonatomic,strong,readwrite) WKWebView *webView;
@property(nonatomic,strong,readwrite) UIProgressView *progressView;
@end

@implementation GTDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:({
        self.webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 80, self.view.frame.size.width, self.view.frame.size.height - 88)];
        self.webView.navigationDelegate = self;
        self.webView;
    })];
    
    [self.view addSubview:({
        self.progressView = [[UIProgressView alloc] initWithFrame:CGRectMake(0, 88, self.view.frame.size.width, 50)];
        self.progressView;
    })];
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://blog.huanghanlian.com"]]];
    
    [self.webView addObserver:self forKeyPath:@"estimatedProgress" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)dealloc{
    [self.webView removeObserver:self forKeyPath:@"estimatedProgress"];
}

- (void)observeValueForKeyPath:(nullable NSString *)keyPath ofObject:(nullable id)object change:(nullable NSDictionary<NSKeyValueChangeKey, id> *)change context:(nullable void *)context{
    self.progressView.progress = self.webView.estimatedProgress;
    NSLog(@"");
}

- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler{
    //    NSLog(@" ");
    decisionHandler(WKNavigationActionPolicyAllow);
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(null_unspecified WKNavigation *)navigation{
    NSLog(@"");
}

@end
