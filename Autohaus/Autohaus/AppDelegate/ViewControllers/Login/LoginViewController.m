//
//  LoginViewController.m
//  Autohaus
//
//  Created by IOS Developer on 3/12/15.
//  Copyright (c) 2015 JoVhengshuApps. All rights reserved.
//

#import "LoginViewController.h"
#import "Constants.h"

@interface LoginViewController ()
- (IBAction)skipLogin:(id)sender;
- (IBAction)createAccount:(id)sender;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)skipLogin:(id)sender {
    
    UIViewController *vc = (UIViewController*)kStoryboard(@"mainTabView");
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:^{
        
    }];
    
    
}

- (IBAction)createAccount:(id)sender {
    
    UIViewController *vc = (UIViewController*)kStoryboard(@"registerView");
    vc.modalPresentationStyle = UIModalPresentationPageSheet;
    vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentViewController:vc animated:YES completion:^{
        
    }];
    
}
@end
