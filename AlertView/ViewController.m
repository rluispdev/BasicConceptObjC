//
//  ViewController.m
//  AlertView
//
//  Created by Rafael Gonzaga on 14/07/24.
//

#import "ViewController.h"

@interface ViewController ()
// Declaração da variável de instância
@property (nonatomic, strong) NSString *mensagem;

@end

@implementation ViewController

- (void)viewDidLoad {
[super viewDidLoad];

// Inicializa a variável de instância
self.mensagem = @"Esta é uma mensagem de alerta.";
}

- (void)viewDidAppear:(BOOL)animated {
[super viewDidAppear:animated];

// Criar o alerta
UIAlertController *alerta = [UIAlertController alertControllerWithTitle:@"Alerta"
                                                             message:self.mensagem // Utiliza a variável de instância
                                                      preferredStyle:UIAlertControllerStyleAlert];
// Criar a ação "OK"
UIAlertAction *acaoOK = [UIAlertAction actionWithTitle:@"OK"
                                               style:UIAlertActionStyleDefault
                                             handler:^(UIAlertAction *action) {
                                                 // Código a ser executado quando "OK" é pressionado
                                                 NSLog(@"O usuário clicou em OK");
                                             }];

// Adicionar a ação ao alerta
[alerta addAction:acaoOK];

// Apresentar o alerta
[self presentViewController:alerta animated:YES completion:nil];
}

@end
