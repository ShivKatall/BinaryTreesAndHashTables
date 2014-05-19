//
//  CMBHashBucket.h
//  HashTable
//
//  Created by Cole Bratcher on 5/19/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CMBHashBucket : NSObject

@property (nonatomic, strong) CMBHashBucket *next;
@property (nonatomic, strong) id object;
@property (nonatomic, strong) NSString *key;

@end
