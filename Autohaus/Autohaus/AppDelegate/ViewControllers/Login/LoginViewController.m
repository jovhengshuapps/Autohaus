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
@property (weak, nonatomic) IBOutlet UIView *viewEmailPassword;
@property (weak, nonatomic) IBOutlet UITextField *textFieldEmail;
@property (weak, nonatomic) IBOutlet UITextField *textFieldPassword;
@property (weak, nonatomic) IBOutlet UIButton *btnLogin;
@property (weak, nonatomic) IBOutlet UILabel *lblNotMember;
@property (weak, nonatomic) IBOutlet UIView *viewCreateAccount;
@property (weak, nonatomic) IBOutlet UIButton *btnCreateAccount;
- (IBAction)forgotPasswordPresed:(id)sender;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.title = @"Login";
    
    [self.navigationItem.rightBarButtonItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:kSWATCH_NavItemText,NSForegroundColorAttributeName,kFONT_HelveticaNeueLight(16),NSFontAttributeName, nil] forState:UIControlStateNormal];
    
    self.viewEmailPassword.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"textfield_login_iPhone"]];
    
    self.textFieldEmail.font = kFONT_HelveticaNeueThinItalic(16.0f);
    self.textFieldPassword.font = kFONT_HelveticaNeueThinItalic(16.0f);
    self.textFieldEmail.textColor = kSWATCH_Gray102;
    self.textFieldPassword.textColor = kSWATCH_Gray102;
        
    self.btnLogin.layer.cornerRadius = 2.0f;
    self.btnLogin.backgroundColor = kSWATCH_BlueButton;
    [self.btnLogin setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    
    self.lblNotMember.font = kFONT_HelveticaNeueLight(16.0f);
    self.lblNotMember.textColor = kSWATCH_Gray80;
    
    self.btnCreateAccount.layer.cornerRadius = 2.0f;
    self.btnCreateAccount.backgroundColor = kSWATCH_BlueButton;
    [self.btnCreateAccount setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
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

#pragma mark - Custom Methods

- (IBAction)skipLogin:(id)sender {
    
    UIViewController *vc = (UIViewController*)kStoryboard(@"mainTabView");
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:^{
        
    }];
    
}

- (IBAction)forgotPasswordPresed:(id)sender {
}

#pragma mark - UITextField Delegate Method
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if ([textField isEqual:self.textFieldEmail])
        [self.textFieldPassword becomeFirstResponder];
    else
        [textField resignFirstResponder];
    return NO;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    if (range.location == 0 && [string length] == 0) {
        
        if ([textField isEqual:self.textFieldEmail]) {
            self.textFieldEmail.font = kFONT_HelveticaNeueThinItalic(16.0f);
            self.textFieldEmail.textColor = kSWATCH_Gray102;
        }
        else {
            self.textFieldPassword.font = kFONT_HelveticaNeueThinItalic(16.0f);
            self.textFieldPassword.textColor = kSWATCH_Gray102;
        }
        
    }
    else {
        if ([textField isEqual:self.textFieldEmail]) {
            self.textFieldEmail.font = kFONT_HelveticaNeue(16.0f);
            self.textFieldEmail.textColor = kSWATCH_Gray30;
        }
        else {
            self.textFieldPassword.font = kFONT_HelveticaNeue(16.0f);
            self.textFieldPassword.textColor = kSWATCH_Gray30;
        }
    }
    
    
    return YES;
}

- (BOOL)textFieldShouldClear:(UITextField *)textField {
    if ([textField isEqual:self.textFieldEmail]) {
        self.textFieldEmail.font = kFONT_HelveticaNeueThinItalic(16.0f);
        self.textFieldEmail.textColor = kSWATCH_Gray102;
    }
    else {
        self.textFieldPassword.font = kFONT_HelveticaNeueThinItalic(16.0f);
        self.textFieldPassword.textColor = kSWATCH_Gray102;
    }
    return YES;
}


@end
