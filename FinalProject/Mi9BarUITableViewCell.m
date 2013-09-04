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
        [self addSubview:emptyStars];
        
        UIImageView* fullStars = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"full-stars"]];
        fullStars.contentMode = UIViewContentModeLeft;
        fullStars.clipsToBounds = YES;
        [self addSubview:fullStars];
        
        self.fullStars = fullStars;
    }
    return self;
}


- (void) setBarDetails:(Mi9BarDetails *)bar
{
    self.textLabel.text = bar.barName;
    self.detailTextLabel.text = bar.location;
    self.fullStars.frame = CGRectMake(self.fullStars.frame.origin.x, self.fullStars.frame.origin.y, self.fullStars.frame.size.width / 2, self.fullStars.frame.size.height);
    
//    self.barLocationLabel.text = bar.location;
//    self.barNameLabel.text = bar.barName;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
