//
//  BarViewController.h
//  FinalProject
//
//  Created by Daphne Chong on 4/08/13.
//  Copyright (c) 2013 Daphne Chong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Mi9BarDetails.h"

@interface BarViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *BarNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *LocationLabel;
@property (weak, nonatomic) IBOutlet UILabel *RatingLabel;
@property (weak, nonatomic) IBOutlet UILabel *SummaryLabel;
@property (weak, nonatomic) IBOutlet UILabel *AddedByLabel;

@property (nonatomic) Mi9BarDetails *barDetails;


- (id)initWithNibName:(NSString *)nibNameOrNil usingBar:(Mi9BarDetails *)barDetails bundle:(NSBundle *)nibBundleOrNil;
@end
