//
//  ViewController.m
//  AlertView
//
//  Created by Rafael Gonzaga on 14/07/24.
//

#import "ViewController.h"

NSString *const myPINumber = @"3.14";

@interface ViewController ()
// Declaração da variável de instância
@property (nonatomic, strong) NSString *myBuffer;

@end

@implementation ViewController

- (void)viewDidLoad {
[super viewDidLoad];

// Inicializa a variável de instância
    _myBuffer = @"";
    
    //MARK: - Mathematics Operations
    /*
    int x = 4;
    int  y = 3;
    float z = (float)x / (float)y;
     
     _myBuffer = [[ NSString alloc] initWithFormat:@"Resultado: %f", z];
    */
 
    
    //MARK: - Constants
   /*
    float z = [myPINumber floatValue] * 2;
    _myBuffer = [[ NSString alloc] initWithFormat:@"Resultado: %f", z];
*/
    
    //MARK: - For
    /*
    _myBuffer = @"for: ";
    
    for(int i=0; i<5; i++){
        
        NSString *newString = [[NSString alloc] initWithFormat:@"%d", i];
        ///Concatenando a informação na variaviavel.
        _myBuffer = [_myBuffer stringByAppendingString:newString];
       */
  
    
    //MARK: - While + break
    
    
    _myBuffer = @"while: ";
    int i = 0;
    
    while (i<5) {
        
        if(i == 3){
            break;
        }
        
        NSString *newString = [[NSString alloc] initWithFormat:@"%d", i];
        ///Concatenando a informação na variaviavel.
        _myBuffer = [_myBuffer stringByAppendingString:newString];
        
        i++;
    }
    
}








- (void)viewDidAppear:(BOOL)animated {
[super viewDidAppear:animated];

// Criar o alerta
UIAlertController *alerta = [UIAlertController alertControllerWithTitle:@"Alerta"
                                                             message: _myBuffer // Utiliza a variável de instância
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
