//
//  PICTURE+CoreDataProperties.m
//  CoreDataProject
//
//  Created by Treinamento on 19/08/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "PICTURE+CoreDataProperties.h"

@implementation PICTURE (CoreDataProperties)

+ (NSFetchRequest<PICTURE *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"PICTURE"];
}

@dynamic data;
@dynamic date;
@dynamic extension;
@dynamic product;

@end
