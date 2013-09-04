//
//  Mi9BarDetails.m
//  FinalProject
//
//  Created by Daphne Chong on 11/08/13.
//  Copyright (c) 2013 Daphne Chong. All rights reserved.
//

#import "Mi9BarDetails.h"

@implementation Mi9BarDetails

- (id)initWithDictionary:(NSDictionary *)barInfo {
    
    self = [super init];
    if (self)
    {
        self.addedBy = barInfo[@"creator"][@"name"];
        self.location = barInfo[@"location"];
        self.summary = barInfo[@"summary"];
        self.rating =  barInfo[@"rating"];
        self.barName = barInfo[@"name"];
        self.imageUrl = [NSString stringWithFormat:@"%@%@", @"http://ios-codeschool.bilue.com.au/samples/v2/", barInfo[@"image"]];
        
    }
    return self;
};
@end
