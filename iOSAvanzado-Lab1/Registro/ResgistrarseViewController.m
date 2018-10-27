//
//  ResgistrarseViewController.m
//  iOSAvanzado-Lab1
//
//  Created by SAMUEL on 27/10/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "ResgistrarseViewController.h"
#import "Utility.h"

@interface ResgistrarseViewController ()
@property (weak, nonatomic) IBOutlet UITextField *userText;
@property (weak, nonatomic) IBOutlet UITextField *emailText;
@property (weak, nonatomic) IBOutlet UITextField *passwdText;

@property (strong ,nonatomic) UIAlertController *alertController;
- (void) alerta:(NSString *) titulo : (NSString *) mensaje;
@end

@implementation ResgistrarseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _userText.text = self.userName;
    _passwdText.text = self.passwd;
}

#pragma mark - Navigation
- (void) alerta:(NSString *) titulo : (NSString *) mensaje{
    _alertController = [UIAlertController alertControllerWithTitle:titulo message:mensaje preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        // Instancio la view controller de destino
    }];
    [_alertController addAction:ok];
    [self presentViewController:_alertController animated:YES completion:nil];
    
}

- (IBAction)RegistrarseButton:(id)sender {
    if([Utility isValidEmailAddress:_emailText.text]){
        [[self navigationController] popViewControllerAnimated:YES];
        //[[self navigationController] popToViewController:_alertController animated:YES]
    }
    else{
        [self alerta:@"Mensaje" :@"El formato del email no es correcto."];
    }
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
