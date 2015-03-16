//
//  TabBarViewController.m
//  Autohaus
//
//  Created by IOS Developer on 3/16/15.
//  Copyright (c) 2015 JoVhengshuApps. All rights reserved.
//

#import "TabBarViewController.h"
#import "Constants.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    NSMutableArray *viewControllers = [NSMutableArray arrayWithArray:self.viewControllers];
    
    if (!TABVIEW_SHOW_HOME) {
        [viewControllers removeObjectAtIndex:TabViewControllerHome];
    }
    if (!TABVIEW_SHOW_SHOP) {
        [viewControllers removeObjectAtIndex:TabViewControllerShop];
    }
    if (!TABVIEW_SHOW_CART) {
        [viewControllers removeObjectAtIndex:TabViewControllerCart];
    }
    if (!TABVIEW_SHOW_TESTIMONIAL) {
        [viewControllers removeObjectAtIndex:TabViewControllerTestimonial];
    }
    if (!TABVIEW_SHOW_MORE) {
        [viewControllers removeObjectAtIndex:TabViewControllerMore];
    }
    
    
    [self setViewControllers: viewControllers];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
