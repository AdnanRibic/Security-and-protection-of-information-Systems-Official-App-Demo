//
//  ForummViewController.m
//  it2
//
//  Created by ADNAN RIBIC on 25/02/15.
//
//

#import "ForummViewController.h"

@interface ForummViewController () <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *nazad;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *stop;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *ponovo;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *naprijed;
- (void)loadRequestFromString:(NSString*)urlString;
- (void)updateButtons;

@end

@implementation ForummViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.navigationController.toolbar.barTintColor = [UIColor blueColor];
    self.navigationController.toolbar.translucent=NO;
    self.title = NSLocalizedString(@"Komunikacija", @"Komunikacija");
    
    self.webView.delegate = self;
    [self loadRequestFromString:@"http://student.fit.ba/forum"];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)loadRequestFromString:(NSString*)urlString
{
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:urlRequest];
}
- (void)updateButtons
{
    self.naprijed.enabled = self.webView.canGoForward;
    self.nazad.enabled = self.webView.canGoBack;
    self.stop.enabled = self.webView.loading;
}
- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    [self updateButtons];
}
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    [self updateButtons];
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    [self updateButtons];
}

@end
