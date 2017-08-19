//
//  ListViewController.h
//  CoreDataProject
//
//  Created by Treinamento on 19/08/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ViewController.h"

@interface ListViewController : ViewController <UITableViewDelegate, UITableViewDataSource>


@property (strong, nonatomic) NSArray* arrayProducts;

@end
