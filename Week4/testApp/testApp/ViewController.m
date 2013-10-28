//
//  ViewController.m
//  testApp
//
//  Created by Kevin O'Toole on 10/22/13.
//  Copyright (c) 2013 Kevin O'Toole. All rights reserved.
//

#import "ViewController.h"

#define BUTTON_ZERO 0
#define BUTTON_ONE 1
#define BUTTON_TWO 2

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Background color:
    self.view.backgroundColor = [UIColor colorWithRed:0.89 green:0.89 blue:0.925 alpha:1]; /*#e3e3ec*/
    
    //Label for username:
    unLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 90.0f, 25.0f)];
    if (unLabel != nil)
    {
        unLabel.backgroundColor = [UIColor clearColor];
        unLabel.text = @"Username:";
        
        [self.view addSubview:unLabel];
    }
    
    //Text field for username label:
    unTextField = [[UITextField alloc] initWithFrame:CGRectMake(100.0f, 10.0f, 200.0f, 25.0f)];
    if (unTextField != nil)
    {
        unTextField.borderStyle = UITextBorderStyleRoundedRect;
        unTextField.placeholder = @"Please enter username...";
        
        [self.view addSubview:unTextField];
    }
    
    //Button for username:
    unButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (unButton != nil)
    {
        unButton.frame = CGRectMake(178.0f, 45.0f, 120.0f, 30.0f);
        [unButton setTitle:@"Login" forState:UIControlStateNormal];
        unButton.tag = BUTTON_ZERO;
        [unButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:unButton];
    }
    
    //Please enter username label:
    pleaseLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 85.0f, 320.0f, 50.0f)];
    if (pleaseLabel != nil)
    {
        pleaseLabel.backgroundColor = [UIColor colorWithRed:0.788 green:0.788 blue:1 alpha:1]; /*#c9c9ff*/
        pleaseLabel.text = @"Please Enter Username";
        pleaseLabel.textColor = [UIColor blueColor];
        pleaseLabel.textAlignment = NSTextAlignmentCenter;
        pleaseLabel.numberOfLines = 2;
        
        [self.view addSubview:pleaseLabel];
    }
    
    //Button for date:
    dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateButton != nil)
    {
        dateButton.frame = CGRectMake(10.0f, 155.0f, 120.0f, 30.0f);
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
        dateButton.tag = BUTTON_ONE;
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:dateButton];
    }
    
    //Button for info:
    infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoButton != nil)
    {
        //infoButton.backgroundColor = [UIColor redColor];
        infoButton.frame = CGRectMake(10.0f, 375.0f, 25.0f, 25.0f);
        infoButton.tag = BUTTON_TWO;
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:infoButton];
    }
    
    //Label for info button:
    infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 400.0f, 320.0f, 50.0f)];
    if (infoLabel != nil)
    {
        infoLabel.backgroundColor = [UIColor clearColor];
        infoLabel.textAlignment = NSTextAlignmentLeft;
        infoLabel.textColor = [UIColor colorWithRed:0.145 green:0.576 blue:0.145 alpha:1]; /*#259325*/
        infoLabel.numberOfLines = 2;
        
        [self.view addSubview:infoLabel];
    }
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)onClick:(UIButton*)button
{
    if (button.tag == BUTTON_ZERO)
    {
        NSString *unInfo = [unTextField text];
        if (unInfo.length != 0)
        {
            NSString *unString = [[NSString alloc] initWithFormat:@"User: %@ has been logged in",unInfo];
            pleaseLabel.text = unString;
            pleaseLabel.layer.borderColor = [[UIColor clearColor]CGColor];
            pleaseLabel.textColor = [UIColor colorWithRed:0 green:0.541 blue:0.18 alpha:1]; /*#008a2e*/
            unTextField.layer.borderColor = [[UIColor clearColor]CGColor];
        }
        else
        {
            pleaseLabel.textColor = [UIColor redColor];
            pleaseLabel.layer.borderColor = [[UIColor redColor]CGColor];
            pleaseLabel.layer.borderWidth = 1.0f;
            pleaseLabel.text = @"Username cannot be empty";
            unTextField.layer.borderColor = [[UIColor redColor]CGColor];
            unTextField.layer.cornerRadius = 6.0f;
            unTextField.layer.borderWidth = 1.0f;
        }
    }
    else if (button.tag == BUTTON_ONE)
    {
        NSDate *date = [NSDate date];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        if (dateFormatter != nil)
        {
            [dateFormatter setDateStyle: NSDateFormatterLongStyle];
            [dateFormatter setTimeStyle: NSDateFormatterFullStyle];
        }
        NSString *dateString = [dateFormatter stringFromDate:date];
        
        UIAlertView *dateAlert = [[UIAlertView alloc] initWithTitle:@"Date" message:dateString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        [dateAlert show];
    }
    else if (button.tag == BUTTON_TWO)
    {
        infoLabel.text = @"This application was created by: Kevin O'Toole.";
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
