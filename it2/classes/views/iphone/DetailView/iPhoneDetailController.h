//
//  iPhoneDetailControllerViewController.h
//  it2
//
//  Created by Adnan Ribic on 16.04.15.
//
//

#import "DetailThemeiPadController.h"

@interface iPhoneDetailController : UITableViewController <UITableViewDataSource, UITableViewDelegate, AVAudioPlayerDelegate>

@property (nonatomic, strong) IBOutlet UITableView *table;
@property (nonatomic, strong) MPMoviePlayerViewController *movieController;
@property (nonatomic, strong) NSArray *contents;
@property (nonatomic, readonly) AVAudioPlayer *audioPlayer;
@property (nonatomic, readonly) AVPlayer *aPlayer;

-(void)processChapter:(NSManagedObject*)chapter;

@end
