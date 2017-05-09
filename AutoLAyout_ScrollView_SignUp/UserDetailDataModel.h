//
//  UserDetailDataModel.h
//  AutoLAyout_ScrollView_SignUp
//
//  Created by Apple on 21/05/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserDetailDataModel : NSObject

@property (strong, nonatomic) NSString *FirstName;
@property (strong, nonatomic) NSString *LastName;
@property (strong, nonatomic) NSString *PhoneNumber;
@property (strong, nonatomic) NSString *City;

- (NSMutableDictionary *)asMutableDictionaryUserDetailDataModel;

@end
