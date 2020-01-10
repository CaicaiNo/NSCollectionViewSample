//
//  MainViewController.m
//  NSCollectionViewSample
//
//  Created by gensee on 2020/1/9.
//  Copyright © 2020年 sheng. All rights reserved.
//

#import "MainViewController.h"
#import "SampleOneViewController.h"
@interface MainViewController ()

@property (strong) SampleOneViewController *one;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}
- (IBAction)sampleOne:(id)sender {
    NSLog(@"MainViewController sampleOne");
    self.one = [[SampleOneViewController alloc] initWithWindowNibName:@"SampleOneViewController"];
    [self.one.window center];
    [self.one.window setLevel:NSFloatingWindowLevel];
    [self.one showWindow:self];
}
- (IBAction)sampleTwo:(id)sender {
    NSLog(@"sampleTwo");
}

@end
