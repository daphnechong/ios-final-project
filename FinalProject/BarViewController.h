//
//  BarViewController.h
//  FinalProject
//
//  Created by Daphne Chong on 4/08/13.
//  Copyright (c) 2013 Daphne Chong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BarViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *BarNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *LocationLabel;
@property (weak, nonatomic) IBOutlet UILabel *RatingLabel;
@property (weak, nonatomic) IBOutlet UILabel *SummaryLabel;
@property (weak, nonatomic) IBOutlet UILabel *AddedByLabel;

@property (nonatomic) NSString *addedBy;
@property (nonatomic) NSString *location;
@property (nonatomic) NSString *barName;
@property (nonatomic) NSNumber *rating;
@property (nonatomic) NSString *summary;

@end
