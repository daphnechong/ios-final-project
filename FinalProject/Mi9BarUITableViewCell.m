//
//  Mi9BarUITableViewCell.m
//  FinalProject
//
//  Created by Daphne Chong on 27/08/13.
//  Copyright (c) 2013 Daphne Chong. All rights reserved.
//

#import "Mi9BarUITableViewCell.h"
#import "Mi9BarDetails.h"

@interface Mi9BarUITableViewCell()
@property (nonatomic, weak) UIImageView* fullStars;
@end

@implementation Mi9BarUITableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        UIImageView* emptyStars = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"empty-stars"]];
        emptyStars.frame =  CGRectMake(203, 20, emptyStars.bounds.size.width, emptyStars.bounds.size.height);
        [self addSubview:emptyStars];
        
        UIImageView* fullStars = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"full-stars"]];
        fullStars.contentMode = UIViewContentModeLeft;
        fullStars.clipsToBounds = YES;
        fullStars.frame = CGRectMake(203, 20, fullStars.bounds.size.width, fullStars.bounds.size.height);
        
        [self addSubview:fullStars];
        
        self.fullStars = fullStars;
    }
    return self;
}


- (void) setBarDetails:(Mi9BarDetails *)bar
{
    self.textLabel.text = bar.barName;
    self.detailTextLabel.text = bar.location;
    float width = self.fullStars.frame.size.width * (bar.rating.floatValue / 5.0f);
    self.fullStars.frame = CGRectMake(self.fullStars.frame.origin.x, self.fullStars.frame.origin.y, width, self.fullStars.frame.size.height);
    
//    self.barLocationLabel.text = bar.location;
//    self.barNameLabel.text = bar.barName;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
