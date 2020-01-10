//
//  AppDelegate.m
//  NSCollectionViewSample
//
//  Created by gensee on 2020/1/7.
//  Copyright © 2020年 sheng. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (strong) MainViewController *sample;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    self.sample = [[MainViewController alloc] initWithNibName:@"MainViewController" bundle:nil];
    [self.window setContentView:self.sample.view];
}
//- (IBAction)sampleOne:(id)sender {
//    NSLog(@"sampleOne");
//}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
