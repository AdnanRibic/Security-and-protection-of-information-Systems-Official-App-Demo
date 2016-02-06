//
//  ITAboutViewController.m
//  it2
//
//  Created by Adnan Ribic on 16.04.15.
//
//

#import "ITAboutViewController.h"

@interface ITAboutViewController ()

@end

@implementation ITAboutViewController

-(NSString*)htmlFile
{
    return [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"data/Author"];
}

@end
