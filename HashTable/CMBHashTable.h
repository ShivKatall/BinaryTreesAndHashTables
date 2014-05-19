//
//  CMBHashTable.h
//  HashTable
//
//  Created by Cole Bratcher on 5/19/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CMBHashTable : NSObject

@property (nonatomic) NSInteger tableSize;
@property (nonatomic, strong) NSMutableArray *hashArray;
@property (nonatomic) NSInteger count;

- (id)initWithTableSize:(NSInteger)size;
- (void)setHashObject:(id)object forKey:(NSString *)key;
- (id)objectForKey:(NSString *)key;

@end
