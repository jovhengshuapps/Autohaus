//
//  RegisterViewController.m
//  Autohaus
//
//  Created by IOS Developer on 3/12/15.
//  Copyright (c) 2015 JoVhengshuApps. All rights reserved.
//

#import "RegisterViewController.h"
#import "Constants.h"

@interface RegisterViewController ()
- (IBAction)cancelPressed:(id)sender;

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Create an Account";
    self.navigationItem.leftBarButtonItem.title = @"Cancel";
    [self.navigationItem.leftBarButtonItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:kSWATCH_NavItemText,NSForegroundColorAttributeName,kFONT_HelveticaNeueLight(16),NSFontAttributeName, nil] forState:UIControlStateNormal];
    
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

- (IBAction)cancelPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}
@end
