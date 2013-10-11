//
//  AppPrefsWindowController.h
//  Paperbox
//
//  Created by Andrey M on 12.10.13.
//  Copyright (c) 2013 Andrey M. All rights reserved.
//

#import "DBPrefsWindowController.h"

@interface AppPrefsWindowController : DBPrefsWindowController

@property (strong) IBOutlet NSView *accountPreferenceView;
@property (strong) IBOutlet NSView *updatesPreferenceView;

@end
