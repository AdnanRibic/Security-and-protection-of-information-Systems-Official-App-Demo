//
//  ITAdViewController.h
//  it2
//
//  Created by Adnan Ribic on 16.04.15.
//
//

#import <UIKit/UIKit.h>
#import <AdMob/GADBannerView.h>

@interface ITAdViewController : UIViewController <GADBannerViewDelegate>

@property (nonatomic, strong) IBOutlet UIView *mainView;

-(void)initAdBanner;

@end
