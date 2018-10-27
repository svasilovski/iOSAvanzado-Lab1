//
//  ViewController.m
//  iOSAvanzado-Lab1
//
//  Created by SAMUEL on 27/10/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "ViewController.h"
#import "Registro/ResgistrarseViewController.h"
#import "Logeado/LogeadoViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *userText;
@property (weak, nonatomic) IBOutlet UITextField *passwdText;
@property (weak, nonatomic) IBOutlet UIButton *ingresarRefButton;
@property (weak, nonatomic) IBOutlet UIView *registrarView;

@property (strong ,nonatomic) UIAlertController *alertController;

- (void)activarButtons;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self activarButtons];
}

- (void)activarButtons {
    Boolean activar = ([_userText.text length] == 0 || [_passwdText.text length] == 0);
    _ingresarRefButton.hidden = activar;
    _registrarView.hidden = activar;
}

- (IBAction)usuarioSalio:(UITextField *)sender {
    [self activarButtons];
}


- (IBAction)passwdSalio:(UITextField *)sender {
    [self activarButtons];
}

- (IBAction)ingresarButon:(id)sender {
    NSString *mensaje = [NSString stringWithFormat:@"El usuario %@ quiere ingresar al sistema.", _userText.text];
    _alertController = [UIAlertController alertControllerWithTitle:@"Mensaje" message:mensaje preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [self performSegueWithIdentifier:@"goToLogeado" sender:self];
        // Instancio la view controller de destino
    }];
    [_alertController addAction:ok];
    [self presentViewController:_alertController animated:YES completion:nil];
}

- (IBAction)regitrarseButton:(id)sender {
    [self performSegueWithIdentifier:@"goToRegistrar" sender:self];
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"goToRegistrar"]){
        ResgistrarseViewController *destination = (ResgistrarseViewController*) segue.destinationViewController;
        
        destination.userName = [NSString stringWithFormat:@"%@", _userText.text];
        destination.passwd = [NSString stringWithFormat:@"%@", _passwdText.text];
    }
    else if([segue.identifier isEqualToString:@"goToLogeado"]){
        LogeadoViewController *destination = (LogeadoViewController*) segue.destinationViewController;
        
        destination.userName = [NSString stringWithFormat:@"%@", _userText.text];
    }
}

@end
