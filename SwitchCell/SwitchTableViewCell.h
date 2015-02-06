//
//  WISwitchTableViewCell.h
//  Wired-In
//
//  Created by Caleb Hicks on 9/21/14.
//  Copyright (c) 2014 We Are Wired In. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SwitchTableViewCellDelegate;

@interface SwitchTableViewCell : UITableViewCell

@property (nonatomic, weak) id<SwitchTableViewCellDelegate>delegate;

@end

@protocol SwitchTableViewCellDelegate <NSObject>

- (void)cellSwitchToggled:(UISwitch *)toggle cell:(SwitchTableViewCell *)cell;

@end
