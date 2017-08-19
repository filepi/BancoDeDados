//
//  ListViewController.m
//  CoreDataProject
//
//  Created by Treinamento on 19/08/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ListViewController.h"
#import "PRODUCT+CoreDataClass.h"

@interface ListViewController ()

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.arrayProducts = [PRODUCT allProducts];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"celula"];
    
   // UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"celula" forIndexPath:indexPath];
    PRODUCT *prod =self.arrayProducts[indexPath.row];
    cell.textLabel.text = prod.brand;
    cell.detailTextLabel.text = prod.name;
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.arrayProducts count];
}



- (IBAction)takePicture:(id)sender {
    UIView *view = sender;
    
    while (![view isKindOfClass:[UITableViewCell class]]) {
        view = [view superview];
    }
    
    NSIndexPath *indexPath = [self.tableView indexPathForCell:(UITableViewCell *)view];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Aviso" message:@"Escolha uma das opções" preferredStyle: UIAlertControllerStyleActionSheet];
    
    UIAlertAction *cameraAction = [UIAlertAction actionWithTitle:@"Camera" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    UIAlertAction *galeriaAction = [UIAlertAction actionWithTitle:@"Galeria" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    
    [alert addAction:cameraAction];
    [alert addAction:galeriaAction];
    
    [self presentViewController:alert animated:YES completion:nil];
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
