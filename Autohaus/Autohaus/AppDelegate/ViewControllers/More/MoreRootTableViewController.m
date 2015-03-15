//
//  MoreRootTableViewController.m
//  GingerDolls
//
//  Created by Angelo Lesano on 8/12/14.
//  Copyright (c) 2014 BD Trade & Marketing. All rights reserved.
//

#import "MoreRootTableViewController.h"
#import "Constants.h"

@interface MoreRootTableViewController ()

@end

@implementation MoreRootTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark - View Life Cycle
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self updateDatasource];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImageView *navBarTitle = [[UIImageView alloc] initWithImage:kAppLogo_Nav];
    [self.navigationItem setTitleView:navBarTitle];

    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Custom Methods
- (void)initAppTheme{
    UIImageView *navBarTitle = [[UIImageView alloc] initWithImage:kAppLogo_Nav];
    [self.navigationItem setTitleView:navBarTitle];
    
//    UIImageView *background = [[UIImageView alloc] initWithImage:kAppBackground];
//    [background setFrame:self.tableView.frame];
//    self.tableView.backgroundView = background;
}

- (void)updateDatasource{
        self.datasource = @[@{@"Account": @[@"Purchase History",
                                       @"Change Password",
                                       @"Reset Password",
                                       @"Shipping and Billing Info",
                                       @"Log Out"]
                         },
                       @{@"About": @[@"About Us",
                                        @"Contact Us",
                                     @"About the Developer"]
                         }];
    
    [self.tableView reloadData];
}
#pragma mark - Delegate Methods
#pragma mark UITableView

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.datasource count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSString *key = [self.datasource[section] allKeys][0];
    return [[self.datasource[section] valueForKey:key] count];
}

- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, tableView.frame.size.width, 44.0f)];
    headerView.backgroundColor = MORE_SECTION_BAR_COLOR;
    
    UILabel *labelTitle = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 0.0f, headerView.frame.size.width - 20.0f, 44.0f)];
    labelTitle.backgroundColor = [UIColor clearColor];
    labelTitle.font = MORE_SECTION_FONT;
    labelTitle.textColor = MORE_SECTION_COLOR;
    labelTitle.text = [self.datasource[section] allKeys][0];
    [headerView addSubview:labelTitle];
    
    return headerView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 44.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"genericCell" forIndexPath:indexPath];
    
    NSInteger section = indexPath.section;
    NSInteger row = indexPath.row;
    
    NSString *key = [self.datasource[section] allKeys][0];
    
    UIView *cellView = [[UIView alloc] initWithFrame:CGRectMake(15.0f, 0.0f, tableView.frame.size.width - 30.0f, 44.0f)];
    cellView.backgroundColor = MORE_CELL_BOX_COLOR;
    cellView.layer.cornerRadius = MORE_CELL_CORNER;
    [cell.contentView addSubview:cellView];
    
    UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, cellView.frame.size.width, 44.0f)];
    
    textLabel.text = [[self.datasource[section] valueForKey:key] objectAtIndex:row];
    textLabel.textColor = MORE_CELL_COLOR;
    textLabel.font = MORE_CELL_FONT;
    
    [cellView addSubview:textLabel];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
//    objectTag = indexPath.row;
//    if (indexPath.row == 0) {
//        NSString *message = [NSString stringWithFormat:@"Would you like to call %@?",kAppName];
//        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:kAppName
//                                                       message:message
//                                                      delegate:self
//                                             cancelButtonTitle:@"Yes"
//                                             otherButtonTitles:@"No", nil];
//        
//        [alert show];
//    }else{
//        MFMailComposeViewController *mailer = [MFMailComposeViewController new];
//        [mailer setMailComposeDelegate:self];
//        [mailer setSubject:@""];
//        [mailer setToRecipients:kAppEmail];
//        [self presentViewController:mailer animated:YES completion:^{
//            [self.tabBarController.tabBar setTranslucent:NO];
//        }];
//    }
    
}

#pragma mark - MFMailComposeViewController Delegate
- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error
{
    [controller dismissViewControllerAnimated:YES completion:^{
        [self.tabBarController.tabBar setTranslucent:YES];
    }];
}

#pragma mark - UIAlertView Delegate
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if ([alertView.title isEqualToString:kAppName]) {
        if (buttonIndex == 0) {
            if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:kAppTelNumber]]) {
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:kAppTelNumber]];
            }else{
                NSString *errMessage = @"This device is incapable of placing a call.";
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"FAIL"
                                                                message:errMessage
                                                               delegate:Nil
                                                      cancelButtonTitle:@"Okay"
                                                      otherButtonTitles:nil, nil];
                [alert show];
            }
        }
    }
}

@end
