//
//  ViewController.m
//  AutoLAyout_ScrollView_SignUp
//
//  Created by Apple on 21/05/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
    
    UITapGestureRecognizer *aGest = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapDetected)];
    aGest.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:aGest];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UIKeyboardWillShowNotification
                                                  object:nil];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UIKeyboardWillHideNotification
                                                  object:nil];
}



- (IBAction)buttonActionSubmit:(id)sender
{
    NSLog(@"buttonActionSubmit");
    
    UserDetailDataModel *aUserDetailDataModel = [UserDetailDataModel new];
    aUserDetailDataModel.FirstName = self.textFieldFirstName.text;
    aUserDetailDataModel.LastName = self.textFieldLastName.text;
    aUserDetailDataModel.PhoneNumber = self.textFieldPhoneNumber.text;
    aUserDetailDataModel.City = self.textFieldCity.text;
    
    NewViewController *aNewViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"NewViewController"];
    aNewViewController.bUserDetailDataModel = aUserDetailDataModel;
    [self.navigationController pushViewController:aNewViewController animated:YES];
}

- (IBAction)buttonActionCancel:(id)sender
{
    NSLog(@"buttonActionCancel");
    [self resetAllTextField];
}


- (void)resetAllTextField
{
    self.textFieldFirstName.text = nil;
    self.textFieldLastName.text = nil;
    self.textFieldPhoneNumber.text = nil;
    self.textFieldCity.text = nil;
}


#pragma mark – Gester method

- (void)tapDetected {
    
    [self.textFieldCurrent resignFirstResponder];
    
}


#pragma mark – UIKeyboard show/hide notification

- (void)keyboardWillShow:(NSNotification *)iNotification {
    
    NSLog(@"%f", [iNotification.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue].size.height);
    
    NSDictionary *aKeyInfo = iNotification.userInfo;
    NSValue *aRectValue = [aKeyInfo valueForKey:UIKeyboardFrameBeginUserInfoKey];
    CGRect aRect = [aRectValue CGRectValue];
    
    if (self.textFieldCurrent.tag == 3 || self.textFieldCurrent.tag == 4)
    {
        self.scrollViewSignUp.contentOffset = CGPointMake(0, (aRect.size.height) - ([UIScreen mainScreen].bounds.size.height / 5.3));
    }
    
}

- (void)keyboardWillHide:(NSNotification *)iNotification  {
    
    self.scrollViewSignUp.contentOffset = CGPointMake(0, 0);
    
}

#pragma mark – UITextField delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    return YES;
    
}


- (void)textFieldDidBeginEditing:(UITextField *)textField {
    
    self.textFieldCurrent = textField;
    
}




@end
