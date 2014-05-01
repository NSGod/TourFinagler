//
//  MDAppController.m
//  Tour Finagler
//
//  Created by Mark Douma on 4/30/2014.
//  Copyright (c) 2014 Mark Douma. All rights reserved.
//

#import "MDAppController.h"


#define MD_DEBUG 1



@implementation MDAppController

+ (void)initialize {
	NSMutableDictionary *defaults = [NSMutableDictionary dictionary];
	[defaults setObject:@(YES) forKey:@"shouldRunCl"];
	[[NSUserDefaults standardUserDefaults] registerDefaults:defaults];
	[[NSUserDefaultsController sharedUserDefaultsController] setInitialValues:defaults];
}


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
#if MD_DEBUG
    NSLog(@"[%@ %@]", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
#endif
	if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"shouldRunCl"] boolValue]) {
		[self.tourWindow center];
		[self.tourWindow makeKeyAndOrderFront:nil];
	}
}


- (IBAction)showTourWindow:(id)sender {
#if MD_DEBUG
    NSLog(@"[%@ %@]", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
#endif
	[self.tourWindow center];
	[self.tourWindow makeKeyAndOrderFront:nil];
}


@end
