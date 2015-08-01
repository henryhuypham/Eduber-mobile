//
//  SVWebViewOthersViewController.h
//

#import <UIKit/UIKit.h>

@interface WebViewOthersViewController : UIViewController<UIWebViewDelegate, UIScrollViewDelegate>

@property (strong, nonatomic) NSString *titleString;
@property (strong, nonatomic) NSString *urlString;

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end
