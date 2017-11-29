//
//  ViewController.m
//  ObjC11
//
//  Created by Don Mini on 11/29/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

#import "ViewController.h"
#import "FirstRunViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)btnTap:(id)sender {
	
	FirstRunViewController *firstRunViewController = [FirstRunViewController new];
	
	UINavigationController *firstRunViewControllerWithNavigation = [[UINavigationController alloc]initWithRootViewController:firstRunViewController];
	
	dispatch_async(dispatch_get_main_queue(), ^{
		[self.navigationController presentViewController:firstRunViewControllerWithNavigation animated:YES completion:nil];
	});
	
}

@end
