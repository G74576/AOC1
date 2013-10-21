//
//  ViewController.h
//  testApp
//
//  Created by Kevin O'Toole on 10/15/13.
//  AOC1 1309, Project 3
//  Copyright (c) 2013 Kevin O'Toole. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
}

-(int)Add:(NSInteger)valueOne addValue:(NSInteger)valueTwo;
-(BOOL)Compare:(NSInteger)boolValueOne compareValue:(NSInteger)boolValueTwo;
-(NSString*)Append:(NSString*)stringOne appendedString:(NSString*)stringTwo;
@end
