//
//  ViewController.m
//  testApp
//
//  Created by Kevin O'Toole on 10/8/13.
//  AOC1 1310 Week2 Project
//  Copyright (c) 2013 Kevin O'Toole. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Background color:
    self.view.backgroundColor = [UIColor colorWithRed:0.098 green:0.639 blue:0.639 alpha:1]; /*#19a3a3*/
    
    //Label for book title:
    label1 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 20.0f, 320.0f, 20.0f)];
    if (label1 != nil)
    {
        label1.backgroundColor = [UIColor colorWithRed:0 green:0.6 blue:0.2 alpha:1]; /*#009933*/
        label1.text = @"The Eye of the World";
        label1.textAlignment = NSTextAlignmentCenter;
        label1.textColor = [UIColor colorWithRed:0.4 green:0.2 blue:0 alpha:1]; /*#663300*/
    }
    
    [self.view addSubview:label1];
    
    //Label for author:
    label2 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 40.0f, 90.0f, 20.0f)];
    if (label2 != nil)
    {
        label2.backgroundColor = [UIColor yellowColor];
        label2.text = @"Author:";
        label2.textAlignment = NSTextAlignmentRight;
        label2.textColor = [UIColor grayColor];
    }
    
    [self.view addSubview:label2];
    
    //Label for author name:
    label3 = [[UILabel alloc] initWithFrame:CGRectMake(90.0f, 40.0f, 230.0f, 20.0f)];
    if (label3 != nil)
    {
        label3.backgroundColor = [UIColor colorWithRed:0.639 green:0.639 blue:0.761 alpha:1]; /*#a3a3c2*/
        label3.text = @"Robert Jordan";
        label3.textAlignment = NSTextAlignmentLeft;
        label3.textColor = [UIColor colorWithRed:0.6 green:0 blue:0.6 alpha:1]; /*#990099*/
    }
    
    [self.view addSubview:label3];
    
    //Label for published:
    label4 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 60.0f, 90.0f, 20.0f)];
    if (label4 != nil)
    {
        label4.backgroundColor = [UIColor colorWithRed:0.2 green:0.6 blue:1 alpha:1]; /*#3399ff*/
        label4.text = @"Published:";
        label4.textAlignment = NSTextAlignmentRight;
        label4.textColor = [UIColor colorWithRed:0.502 green:0 blue:0 alpha:1]; /*#800000*/
    }
    
    [self.view addSubview:label4];
    
    //Label for published date:
    label5 = [[UILabel alloc] initWithFrame:CGRectMake(90.0f, 60.0f, 230.0f, 20.0f)];
    if (label5 != nil)
    {
        label5.backgroundColor = [UIColor redColor];
        label5.text = @"January 15, 1990";
        label5.textAlignment = NSTextAlignmentLeft;
        label5.textColor = [UIColor whiteColor];
    }
    
    [self.view addSubview:label5];
    
    //Label for summary:
    label6 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 80.0f, 90.0f, 20.0f)];
    if (label6 != nil)
    {
        label6.backgroundColor = [UIColor cyanColor];
        label6.text = @"Summary";
        label6.textAlignment = NSTextAlignmentLeft;
        label6.textColor = [UIColor orangeColor];
    }
    
    [self.view addSubview:label6];
    
    //Label for summary contents:
    label7 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 100.0f, 320.0f, 220.0f)];
    if (label7 != nil)
    {
        label7.backgroundColor = [UIColor blackColor];
        label7.text = @"The Eye of the World is about a group of young people who must flee their village to protect it, and in doing so they find out that they must travel to The Eye of the World to save the world from the Dark One being able to touch the world again. Legend has is that in the time of need when the dark one stirs and is once again able to threaten the pattern of life, the Dragon will be reborn to save the world.";
        label7.textAlignment = NSTextAlignmentCenter;
        label7.textColor = [UIColor lightGrayColor];
        label7.numberOfLines = 11;
    }
    
    [self.view addSubview:label7];
    
    //Label for list:
    label8 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 320.0f, 100.0f, 20.0f)];
    if (label8 != nil)
    {
        label8.backgroundColor = [UIColor blueColor];
        label8.text = @"List of items";
        label8.textAlignment = NSTextAlignmentLeft;
        label8.textColor = [UIColor colorWithRed:0.902 green:0.722 blue:0.902 alpha:1]; /*#e6b8e6*/
    }
    
    [self.view addSubview:label8];
    
    //NSString items for array:
    NSString *listItem1 = @"Aes Sedai";
    NSString *listItem2 = @"Warders";
    NSString *listItem3 = @"Trollocs";
    NSString *listItem4 = @"Myddraals";
    NSString *listItem5 = @"The Forsaken";
    
    //NSArray with NSString Items:
    NSArray *itemsArray = [NSArray arrayWithObjects: listItem1, listItem2, listItem3, listItem4, listItem5, nil];
    
    //Mutable string for array:
    NSMutableString *mutableItems = [[NSMutableString alloc] initWithCapacity:5];
    
    //Loop through array:
    for (int i = 0; i<[itemsArray count]; i++)
    {
        [mutableItems appendString:[itemsArray objectAtIndex:i]];
        if (i < 3)
        {
            [mutableItems appendString:@", "];
        }
        else if (i == 3)
        {
            [mutableItems appendString:@", and "];
        }
        else
        {
            [mutableItems appendString:@"."];
        }
    }
    
    //Label for list items:
    label9 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 340.0f, 320.0f, 45.0f)];
    if (label9 != nil)
    {
        label9.backgroundColor = [UIColor colorWithRed:0.698 green:1 blue:0.698 alpha:1]; /*#b2ffb2*/
        label9.text = mutableItems;
        label9.textAlignment = NSTextAlignmentCenter;
        label9.textColor = [UIColor colorWithRed:0.325 green:0.098 blue:0.212 alpha:1]; /*#531936*/
        label9.numberOfLines = 2;
    }
    
    [self.view addSubview:label9];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
