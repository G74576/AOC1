//
//  ViewController.m
//  testApp
//
//  Created by Kevin O'Toole on 10/15/13.
//  AOC1 1309, Project 3
//  Copyright (c) 2013 Kevin O'Toole. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// 1. Create a function called Add. This function will take two NSInteger or int types and return the result of an addition between these two.
- (int)Add:(NSInteger)valueOne addValue:(NSInteger)valueTwo{
    return (valueOne + valueTwo);
}

// 2. Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO based on whether the values are equal.
- (BOOL)Compare:(NSInteger)boolValueOne compareValue:(NSInteger)boolValueTwo{
    if (boolValueOne == boolValueTwo) {
        return YES;
    }
    else {
        return NO;
    }
}

// 3. Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the appendString method.
- (NSString*)Append:(NSString *)stringOne appendedString:(NSString *)stringTwo{
    NSMutableString *newString = [[NSMutableString alloc] initWithString:stringOne];
    [newString appendString:stringTwo];
    return newString;
}


// 5. Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.
- (void)DisplayAlertWithString:(NSString *)alertString alertTitle:(NSString *)alertTitle{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:alertTitle message:alertString delegate:nil cancelButtonTitle:@"OK!" otherButtonTitles:nil, nil];
    if (alertView != nil) {
        [alertView show];
    }
}

- (void)viewDidLoad
{
    // 4. Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
    NSString *callAppend = [self Append:@"I am " appendedString:@"Kevin O'Toole"];
    [self DisplayAlertWithString:callAppend alertTitle:@"Who Am I?"];
    
    // 6. Call the Add function passing in two integer values. Capture the return of this function into a variable.
    int addSum = [self Add:20 addValue:15];
    
    // 7. Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
    // 8. Give it some text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
    NSNumber *addNumber = [[NSNumber alloc] initWithInt:addSum];
    NSString *addNumberToString = [addNumber stringValue];
    NSString *addResults = [self Append:@"The number is " appendedString:addNumberToString];
    [self DisplayAlertWithString:addResults alertTitle:@"What's My Age?"];
    
    // 9. Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function.
    NSInteger int1 = 15;
    NSInteger int2 = 15;
    BOOL compareResults = [self Compare:int1 compareValue:int2];
    NSString *compareString = [NSString stringWithFormat:@"Are %d & %d equal? %@", int1, int2, compareResults? @"YES" : @"NO"];
    
    if (compareResults == YES) {
        [self DisplayAlertWithString:compareString alertTitle:@"Compare"];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
