//
//  UserDetailDataModel.m
//  AutoLAyout_ScrollView_SignUp
//
//  Created by Apple on 21/05/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import "UserDetailDataModel.h"

@implementation UserDetailDataModel

- (NSMutableDictionary *)asMutableDictionaryUserDetailDataModel
{
    NSMutableDictionary *aDictionaryUserDetailDataModel = [NSMutableDictionary new];
    [aDictionaryUserDetailDataModel setObject:(self.FirstName == nil ? @"":self.FirstName) forKey:@"FirstName"];
    [aDictionaryUserDetailDataModel setObject:(self.LastName == nil ? @"":self.LastName) forKey:@"LastName"];
    [aDictionaryUserDetailDataModel setObject:(self.PhoneNumber == nil ? @"":self.PhoneNumber) forKey:@"PhoneNumber"];
    [aDictionaryUserDetailDataModel setObject:(self.City == nil ? @"":self.City) forKey:@"City"];
    
    return aDictionaryUserDetailDataModel;
}

@end
