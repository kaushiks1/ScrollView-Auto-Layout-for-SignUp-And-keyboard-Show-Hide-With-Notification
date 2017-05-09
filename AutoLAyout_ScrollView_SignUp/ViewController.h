//
//  ViewController.h
//  AutoLAyout_ScrollView_SignUp
//
//  Created by Apple on 21/05/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewViewController.h"
#import "UserDetailDataModel.h"

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textFieldCurrent;

@property (weak, nonatomic) IBOutlet UITextField *textFieldFirstName;
@property (weak, nonatomic) IBOutlet UITextField *textFieldLastName;
@property (weak, nonatomic) IBOutlet UITextField *textFieldPhoneNumber;
@property (weak, nonatomic) IBOutlet UITextField *textFieldCity;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollViewSignUp;


- (IBAction)buttonActionSubmit:(id)sender;
- (IBAction)buttonActionCancel:(id)sender;



@end

