//
//  AppPrefsWindowController.m
//  Paperbox
//
//  Created by Andrey M on 12.10.13.
//  Copyright (c) 2013 Andrey M. All rights reserved.
//

#import "AppPrefsWindowController.h"

@interface AppPrefsWindowController ()

@end

@implementation AppPrefsWindowController

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

-(void)setupToolbar
{
    [self addView:_accountPreferenceView label:NSLocalizedString(@"User account", @"Account view") image:[NSImage imageNamed:NSImageNameUserAccounts]];
    [self addView:_updatesPreferenceView label:NSLocalizedString(@"Updates", @"Updates view") image:[NSImage imageNamed:@"Update"]];
    
    [self setCrossFade:[[NSUserDefaults standardUserDefaults] boolForKey:@"fade"]];
}

@end
