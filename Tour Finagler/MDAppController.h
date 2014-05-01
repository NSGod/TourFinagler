//
//  MDAppController.h
//  Tour Finagler
//
//  Created by Mark Douma on 4/30/2014.
//  Copyright (c) 2014 Mark Douma. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MDAppController : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (assign) IBOutlet NSWindow *tourWindow;


- (IBAction)showTourWindow:(id)sender;

@end
