

#import "WebViewOthersViewController.h"


@implementation WebViewOthersViewController

- (void)viewWillAppear:(BOOL)animated {
//    self.navigationController.scrollNavigationBar.scrollView = self.webView.scrollView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = _titleString;
    
    //Status view
    UIView* view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 20.0)];
    view.backgroundColor= [UIColor colorWithRed:234.0/255.0f green:76.0/255.0f blue:137.0/255.0f alpha:1.0];
    [self.view addSubview:view];
    
    //Set delegate for webview
    _webView.delegate = self;
    
    [self setTitleString:@"Map"];
    
    _webView.scrollView.delegate = self;
    
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:_urlString]];
    [_webView loadRequest:request];
    
    
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{

}

- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView
{
//    [self.navigationController.scrollNavigationBar resetToDefaultPosition:YES];
}

@end
