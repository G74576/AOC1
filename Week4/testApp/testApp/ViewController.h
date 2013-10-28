//
//  ViewController.h
//  testApp
//
//  Created by Kevin O'Toole on 10/22/13.
//  Copyright (c) 2013 Kevin O'Toole. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController
{
    UILabel *unLabel;           //Username label
    UITextField *unTextField;   //Username text field
    UIButton *unButton;         //Username login button
    UILabel *pleaseLabel;       //Please enter username label
    UIButton *dateButton;       //Date button
    UIButton *infoButton;       //Info button
    UILabel *infoLabel;         //Info label
}

- (void)onClick:(UIButton*)button;  //function for button on clicks

@end
