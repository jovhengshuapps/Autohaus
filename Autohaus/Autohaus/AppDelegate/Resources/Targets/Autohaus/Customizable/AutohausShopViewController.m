//
//  AutohausShopViewController.m
//  Autohaus
//
//  Created by Joshua Jose Pecson on 3/14/15.
//  Copyright (c) 2015 JoVhengshuApps. All rights reserved.
//

#import "AutohausShopViewController.h"

@interface AutohausShopViewController ()

@end

@implementation AutohausShopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"pushList"]) {
        CollectionListTableViewController *list = segue.destinationViewController;
        
        NSString *key = [[self.datasource allKeys] objectAtIndex:indexPath.section];
        NSInteger objectTag = indexPath.row;
        
        if ([[[[self.datasource objectForKey:
                
        list.selected   = [datasource[objectTag] valueForKey:@"list"];
        list.title      = [datasource[objectTag] valueForKey:@"name"];
    }
}
#pragma mark - Custom Methods
- (void) getDataSource {
    [super getDataSource];
    
#warning implement webservice here
    //Plist to Dictionary
    NSString *path = [[NSBundle mainBundle] pathForResource:@"ProductList" ofType:@"plist"];
    NSDictionary *product = [[NSDictionary alloc] initWithContentsOfFile:path];
    
    self.datasource = [NSDictionary dictionaryWithDictionary:product];
}

- (NSString*)stringTitleForSection:(NSInteger)section {
    NSString *key = [[self.datasource allKeys] objectAtIndex:section];
    return key;
}

- (void) collapseSection:(UITapGestureRecognizer *)tap {
    
    UIView *tappedView = (UIView *)tap.view;
    NSInteger section = tappedView.tag;
    
    if ([self.arrayCollapsedSection containsObject:[NSNumber numberWithInteger:section]]) {
        [self.arrayCollapsedSection removeObject:[NSNumber numberWithInteger:section]];
    }
    else {
        [self.arrayCollapsedSection addObject:[NSNumber numberWithInteger:section]];
    }
    
    
    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:section] withRowAnimation:UITableViewRowAnimationFade];
}


#pragma  mark - UITableView DataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [[self.datasource allKeys] count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSString *key = [[self.datasource allKeys] objectAtIndex:section];
    if ([self.arrayCollapsedSection containsObject:[NSNumber numberWithInteger:section]]) {
        return 0;
    }
    return [[self.datasource objectForKey:key] count];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    UIView *viewHeader = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, tableView.frame.size.width, 54.0f)];
    viewHeader.layer.cornerRadius = 6.0f;
    viewHeader.backgroundColor = kSWATCH_Gray230;
    viewHeader.tag = section;
    
    UILabel *labelTitle = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 0.0f, viewHeader.frame.size.width - 50.0f, 54.0f)];
    labelTitle.text = [self stringTitleForSection:section];
    labelTitle.tag = 1;
    [viewHeader addSubview:labelTitle];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_expand_iPhone"]];
    if ([self.arrayCollapsedSection containsObject:[NSNumber numberWithInteger:section]]) {
        imageView.image = [UIImage imageNamed:@"icon_collapse_iPhone"];
    }
    imageView.frame = CGRectMake(labelTitle.frame.size.width, 12.0f, 30.0f, 30.0f);
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.tag = 2;
    [viewHeader addSubview:imageView];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(collapseSection:)];
    [viewHeader addGestureRecognizer:tap];
    
    return viewHeader;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 54.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 40.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionRootCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    NSString *key = [[self.datasource allKeys] objectAtIndex:indexPath.section];
    NSDictionary *item = [[self.datasource objectForKey:key] objectAtIndex:indexPath.row];
    cell.textLabel.text = [item objectForKey:@"name"];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSString *key = [[self.datasource allKeys] objectAtIndex:indexPath.section];
    NSInteger objectTag = indexPath.row;
    
    //CHECK IF EMPTY
    if ([[[[self.datasource objectForKey:key] objectAtIndex:objectTag] valueForKey:@"list"] count] > 0) {
        [self performSegueWithIdentifier:@"pushList" sender:self];
    }else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:kAppName
                                                        message:@"Collection is empty. Please try something else"
                                                       delegate:nil
                                              cancelButtonTitle:@"Okay"
                                              otherButtonTitles:nil, nil];
        [alert show];
    }

}

@end
