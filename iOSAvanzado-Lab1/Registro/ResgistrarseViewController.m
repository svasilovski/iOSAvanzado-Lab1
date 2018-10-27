//
//  ResgistrarseViewController.m
//  iOSAvanzado-Lab1
//
//  Created by SAMUEL on 27/10/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "ResgistrarseViewController.h"

@interface ResgistrarseViewController ()
@property (weak, nonatomic) IBOutlet UITextField *userText;
@property (weak, nonatomic) IBOutlet UITextField *emailText;
@property (weak, nonatomic) IBOutlet UITextField *passwdText;

@end

@implementation ResgistrarseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _userText.text = self.userName;
    _passwdText.text = self.passwd;
}

#pragma mark - Navigation
- (IBAction)RegistrarseButton:(id)sender {
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
