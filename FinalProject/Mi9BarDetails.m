//
//  Mi9BarDetails.m
//  FinalProject
//
//  Created by Daphne Chong on 11/08/13.
//  Copyright (c) 2013 Daphne Chong. All rights reserved.
//

#import "Mi9BarDetails.h"

@implementation Mi9BarDetails
@synthesize addedBy;
@synthesize location;
@synthesize barName;
@synthesize rating;
@synthesize summary;
@synthesize imageUrl;


- (id)initWithDictionary:(NSDictionary *)barInfo {
    
    self = [super init];
    if (self)
    {
        addedBy = barInfo[@"creator"][@"name"];
        location = barInfo[@"location"];
        summary = barInfo[@"summary"];
        rating =  barInfo[@"rating"];
        barName = barInfo[@"name"];
        imageUrl = [NSString stringWithFormat:@"%@%@", @"http://ios-codeschool.bilue.com.au/samples/v2/", barInfo[@"image"]];
        
    }
    return self;
};
@end
