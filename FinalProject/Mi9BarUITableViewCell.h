//
//  Mi9BarUITableViewCell.h
//  FinalProject
//
//  Created by Daphne Chong on 27/08/13.
//  Copyright (c) 2013 Daphne Chong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Mi9BarDetails.h"

@interface Mi9BarUITableViewCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel *barNameLabel;
@property (nonatomic, strong) IBOutlet UILabel *barLocationLabel;
@property (nonatomic, strong) IBOutlet UIImageView *barEmptyStarsImageView;
@property (nonatomic, strong) IBOutlet UIImageView *barFullStarsImageView;

- (void) setBarDetails:(Mi9BarDetails *)bar;

@end
