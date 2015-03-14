//
//  CollectionRootTableViewController.m
//  GingerDolls
//
//  Created by Angelo Lesano on 8/12/14.
//  Copyright (c) 2014 BD Trade & Marketing. All rights reserved.
//

#import "CollectionRootTableViewController.h"

#define kSegue_List     @"pushList"

@interface CollectionRootTableViewController ()

@end

@implementation CollectionRootTableViewController
@synthesize datasource;
@synthesize arrayCollapsedSection;
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark - View Life Cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self initAppTheme];

    [self getDataSource];

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
    
}

- (void)getDataSource {
    self.arrayCollapsedSection = [[NSMutableArray alloc] init];
    self.datasource = nil;
}

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//    if ([segue.identifier isEqualToString:kSegue_List]) {
//        CollectionListTableViewController *list = segue.destinationViewController;
//        list.selected   = [datasource[objectTag] valueForKey:@"list"];
//        list.title      = [datasource[objectTag] valueForKey:@"name"];
//    }
//}
#pragma mark - Delegate Methods
#pragma mark UITableView

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    return 1;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return [datasource count];
//}
//
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    CollectionRootCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
//    
//    cell.background.image = [UIImage imageNamed:[datasource[indexPath.row] valueForKey:@"image"]];
//    
//    return cell;
//}
//
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
//    objectTag = indexPath.row;
//    
//    //CHECK IF EMPTY
//    if ([[datasource[objectTag] valueForKey:@"list"] count] > 0) {
//        [self performSegueWithIdentifier:kSegue_List sender:self];
//    }else{
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:kAppName
//                                                        message:@"Collection is empty. Please try something else"
//                                                       delegate:nil
//                                              cancelButtonTitle:@"Okay"
//                                              otherButtonTitles:nil, nil];
//        [alert show];
//    }
//
//}

@end
