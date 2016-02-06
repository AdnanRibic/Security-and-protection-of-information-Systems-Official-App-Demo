//
//  ITHelpViewController.m
//  it2
//
//  Created by Adnan Ribic on 16.04.15.
//
//

#import "ITHelpViewController.h"

@implementation ITHelpViewController

-(NSString*)htmlFile
{
    return [[NSBundle mainBundle] pathForResource:@"help" ofType:@"html" inDirectory:@"data"];
}

@end
