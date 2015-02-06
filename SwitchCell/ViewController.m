//
//  ViewController.m
//  SwitchCell
//
//  Created by Caleb Hicks on 2/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ViewController.h"
#import "SwitchTableViewCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate, SwitchTableViewCellDelegate>

@property (strong, nonatomic) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"Sample Switch Cell";
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.tableView registerClass:[SwitchTableViewCell class] forCellReuseIdentifier:@"switchCell"];
    
    [self.view addSubview:self.tableView];
    
}

#pragma mark - UITableViewDatasource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    switch (indexPath.row) {
        case 0:{
            UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell"];
            cell.textLabel.text = @"Regular Cell";
            
            return cell;
            break;
        }
            
        default: {
            SwitchTableViewCell *switchCell = [self.tableView dequeueReusableCellWithIdentifier:@"switchCell"];
            switchCell.textLabel.text = @"Switch Cell!";
            switchCell.delegate = self;
            
            return switchCell;
            break;
        }
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - SwitchCell Methods

- (void)cellSwitchToggled:(UISwitch *)toggle cell:(SwitchTableViewCell *)cell {
    
    NSLog(@"Cell switch toggled!");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
