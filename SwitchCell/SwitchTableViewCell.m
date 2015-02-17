//
//  WISwitchTableViewCell.m
//  Wired-In
//
//  Created by Caleb Hicks on 9/21/14.
//  Copyright (c) 2014 We Are Wired In. All rights reserved.
//

#import "SwitchTableViewCell.h"

@interface SwitchTableViewCell()

@property (strong, nonatomic) IBOutlet UISwitch *toggle;

@end

@implementation SwitchTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.toggle = [[UISwitch alloc] initWithFrame:CGRectMake(self.contentView.frame.size.width - 20, 5, 40, 20)];
    
    [self.toggle addTarget:self action:@selector(switchChanged:) forControlEvents:UIControlEventValueChanged];
    
    [self.contentView addSubview:self.toggle];
    
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)switchChanged:(id)sender {
    UISwitch *cellSwitch = sender;
    [_delegate cellSwitchToggled:cellSwitch cell:self];
}

@end
