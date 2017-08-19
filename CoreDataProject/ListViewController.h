//
//  ListViewController.h
//  CoreDataProject
//
//  Created by Treinamento on 19/08/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ViewController.h"
#import "PRODUCT+CoreDataClass.h"

@interface ListViewController : ViewController <UITableViewDelegate,
                                                UITableViewDataSource,
                                                UIImagePickerControllerDelegate,
                                                UINavigationControllerDelegate>


@property (strong, nonatomic) NSArray* arrayProducts;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) PRODUCT *selectProd;
@property (strong, nonatomic) UIImagePickerController *imagePicker;
@end
