//
//  NewViewController.h
//  AutoLAyout_ScrollView_SignUp
//
//  Created by Apple on 21/05/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserDetailDataModel.h"
#import "Utility.h"

@interface NewViewController : UIViewController

@property (strong, nonatomic) UserDetailDataModel *bUserDetailDataModel;

- (IBAction)buttonActionBack:(id)sender;


@end
