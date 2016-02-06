//
//  ITLockView.h
//  it2
//
//  Created by Adnan Ribic on 16.04.15.
//
//

#import <UIKit/UIKit.h>

@interface ITLockView : UIView

@property (nonatomic, strong) IBOutlet UIButton *button;
@property (nonatomic, strong) IBOutlet UIButton *restoreButton;
@property (nonatomic, strong) IBOutlet UILabel *label;

-(void)initLock;

@end
