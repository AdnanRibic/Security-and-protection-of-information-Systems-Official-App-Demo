//
//  ITHtmlViewController.h
//  it2
//
//  Created by Adnan Ribic on 16.04.15.
//
//

#import <UIKit/UIKit.h>

@interface ITHtmlViewController  : UIViewController <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) IBOutlet UINavigationItem *navigationItem;
@property (strong, nonatomic) UIBarButtonItem* returnButton;

-(NSString*)htmlFile;
-(void)setOnCloseHandler:(id)target selector:(SEL)selector object:(id)object;

@end
