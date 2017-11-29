//
//  FirstRunViewController.m
//  ObjC11
//
//  Created by Don Mini on 11/29/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

#import "FirstRunViewController.h"

@interface FirstRunViewController ()

@end

@implementation FirstRunViewController

- (void)confirmSettingsBtnClick:(id)sender {
	NSLog(@"Tapped!");
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view.
	
	UIBarButtonItem *confirmButton = [[UIBarButtonItem alloc]init];
	confirmButton.title = @"Confirm"; // [@"SETTING_INTRO_CONFIRM" translate];
	confirmButton.style = UIBarButtonItemStylePlain;
	confirmButton.target = self;
	confirmButton.action = @selector(confirmSettingsBtnClick:);
	
	self.navigationItem.rightBarButtonItem = confirmButton;
	
	self.view.backgroundColor = [UIColor blueColor];
}

@end
