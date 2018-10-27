//
//  LogeadoViewController.m
//  iOSAvanzado-Lab1
//
//  Created by SAMUEL on 27/10/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "LogeadoViewController.h"

@interface LogeadoViewController ()
@property (weak, nonatomic) IBOutlet UILabel *UsuarioLogeado;

@end

@implementation LogeadoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _UsuarioLogeado.text = self.userName;
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
