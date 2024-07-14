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

- (int) returnDouble: (int) i {
    return i * 2;
}


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
    
    
    //MARK: - While + continue
    /*
     _myBuffer = @"while: ";
     int i = 0;
     
     while (i<5) {
     
     if(i == 3){
     i++;
     continue;
     }
     
     NSString *newString = [[NSString alloc] initWithFormat:@"%d", i];
     ///Concatenando a informação na variaviavel.
     _myBuffer = [_myBuffer stringByAppendingString:newString];
     
     i++;
     }
     
     */
    
    //MARK: - DO WHILE
    
    /*
     _myBuffer = @" do while: ";
     int i = 10;
     do {
     NSString *newString = [[NSString alloc] initWithFormat:@"%d", i];
     ///Concatenando a informação na variaviavel.
     _myBuffer = [_myBuffer stringByAppendingString:newString];
     i ++;
     
     } while (i < 5);
     */
    
    //MARK: - Command IF
    /*
     _myBuffer = @"if : ";
     int i = 3;
     
     if ( i > 5 || i == 2){
     _myBuffer = [_myBuffer stringByAppendingString:@"i é maior que 5"];
     }else {
     _myBuffer = [_myBuffer stringByAppendingString:@"i é menor ou igual que 5"];
     }
     */
    
    //MARK: - SHORT IF
    /*
    int  i = 5;
    
    _myBuffer = i == 5 ? @"i é 5" : @"i é outro valor";
    
    _myBuffer = (i % 2 == 0) ? @"PAR" : @"IMPAR";
    */
    
    //MARK: - SWITCH
    /*
    int i = 2;
    
    switch (i) {
        case 1:
            _myBuffer = @"i entrou no primeiro case case";
            break;
            
        case 2:
            _myBuffer = @"i entrou no segundo case case";
            break;
           
        case 3:
            _myBuffer = @"i entrou no terceiro case case";
            break;
            
        default:
            _myBuffer = @"i não entrou em nenhum case";
            break;
    }
     */
    
    //MARK: -  COMO CRIAR E INVOCAR UMA FUNÇÃO
    
    int x = 5;
    int z = [self returnDouble:x];
    _myBuffer = [[NSString alloc] initWithFormat:@"O Dobro de %d é %d", x, z];

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
