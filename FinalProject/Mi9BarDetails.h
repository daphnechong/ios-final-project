//
//  Mi9BarDetails.h
//  FinalProject
//
//  Created by Daphne Chong on 11/08/13.
//  Copyright (c) 2013 Daphne Chong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Mi9BarDetails : NSObject
@property (nonatomic) NSString *addedBy;
@property (nonatomic) NSString *location;
@property (nonatomic) NSString *barName;
@property (nonatomic) NSNumber *rating;
@property (nonatomic) NSString *summary;
@property (nonatomic) NSString *imageUrl;

- (id) initWithDictionary:(NSDictionary *)barInfo;

@end
