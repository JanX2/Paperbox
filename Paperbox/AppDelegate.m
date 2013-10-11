//
//  AppDelegate.m
//  Paperbox
//
//  Created by Andrey M on 11.10.13.
//  Copyright (c) 2013 Andrey M. All rights reserved.
//

#import "AppDelegate.h"
#import "AppPrefsWindowController.h"

@implementation AppDelegate

+ (void)initialize{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSDictionary *appDefaults = [NSDictionary dictionaryWithObjectsAndKeys:
                                 @"YES", @"fade",
                                 @"YES", @"shiftSlowsAnimation",
                                 nil];
    [defaults registerDefaults:appDefaults];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

-(void)awakeFromNib
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults addObserver:self
               forKeyPath:@"fade"
                  options:NSKeyValueObservingOptionOld
                  context:NULL];
}

- (IBAction)openPreferences:(id)sender{
	[[AppPrefsWindowController sharedPrefsWindowController] showWindow:nil];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
	[[AppPrefsWindowController sharedPrefsWindowController] setCrossFade:[[NSUserDefaults standardUserDefaults] boolForKey:@"fade"]];
	[[AppPrefsWindowController sharedPrefsWindowController] setShiftSlowsAnimation:[[NSUserDefaults standardUserDefaults] boolForKey:@"shiftSlowsAnimation"]];
}

@end
