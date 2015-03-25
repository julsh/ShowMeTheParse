//
//  ViewController.m
//  ShowMeTheParse
//
//  Created by Julia Roggatz on 25/03/15.
//  Copyright (c) 2015 Julia Roggatz. All rights reserved.
//

#import "StartViewController.h"

@interface StartViewController ()

@property (nonatomic, weak) IBOutlet UITextField *nameField;
@property (nonatomic, weak) IBOutlet UITextField *emailField;
@property (nonatomic, weak) IBOutlet UITextField *passwordField;
@property (nonatomic, weak) IBOutlet UIButton *photoButton;
@property (nonatomic, weak) IBOutlet UIButton *logInSignUpButton;
@property (nonatomic, weak) IBOutlet UIButton *switchModesButton;

@property (nonatomic, assign) BOOL hasAccount;

@end

@implementation StartViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)switchModes:(id)sender {
	
	self.hasAccount = !self.hasAccount;
	if (self.hasAccount) {
		self.nameField.hidden = YES;
		self.photoButton.hidden = YES;
		[self.logInSignUpButton setTitle:@"Log In!" forState:UIControlStateNormal];
		[self.switchModesButton setTitle:@"Not yet a member? Sign up!" forState:UIControlStateNormal];
	}
	else {
		self.nameField.hidden = NO;
		self.photoButton.hidden = NO;
		[self.logInSignUpButton setTitle:@"Sign Up!" forState:UIControlStateNormal];
		[self.switchModesButton setTitle:@"Already a member? Log in!" forState:UIControlStateNormal];
	}
}

- (IBAction)logInSignUpButtonPressed:(id)sender {
	
}

@end
