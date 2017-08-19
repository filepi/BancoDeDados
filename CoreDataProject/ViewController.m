//
//  ViewController.m
//  CoreDataProject
//
//  Created by Treinamento on 19/08/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ViewController.h"
#import "PRODUCT+CoreDataClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnCadastrar:(id)sender
{
    NSDictionary *dic = @{@"name": self.txtName.text,
                          @"brand" : self.txtBrand.text,
                          @"quantity": self.txtQuantity.text};
    
    [PRODUCT newProduct:dic];
    self.txtName.text = @"";
    self.txtBrand.text =@"";
    self.txtQuantity.text=@"";
    
    
}

@end
