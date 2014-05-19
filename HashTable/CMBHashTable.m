//
//  CMBHashTable.m
//  HashTable
//
//  Created by Cole Bratcher on 5/19/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import "CMBHashTable.h"
#import "CMBHashBucket.h"

@implementation CMBHashTable

// public
- (id)initWithTableSize:(NSInteger)size {
    self = [super init];
    if (self) {
        _tableSize = size;
        _hashArray = [NSMutableArray new];
        
        for (int i = 0; i <= _tableSize; i++) {
            CMBHashBucket *bucket = [CMBHashBucket new];
            [_hashArray addObject:bucket];
        }
    }
    
    return self;
}

- (void)setHashObject:(id)object forKey:(NSString *)key {
    CMBHashBucket *bucket = [CMBHashBucket new];
    NSInteger index = [self hash:key];
    bucket.object = object;
    bucket.key = key;
    bucket.next = _hashArray[index];
    _hashArray[index] = bucket;
    
    self.count++;
}

- (id)objectForKey:(NSString *)key {
    NSInteger index = [self hash:key];
    
    CMBHashBucket *bucket = _hashArray[index];
    
    while (bucket) {
        if ([bucket.key isEqualToString:key]) {
            return bucket.object;
            
        } else {
            bucket = bucket.next;
        }
    }
    return nil;
}

// private
- (NSInteger)hash:(NSString *)key
{
    NSInteger total = 0;
    for (int i = 0; i <= (key.length -1); i ++) {
        NSInteger asc = [key characterAtIndex:i];
        total += asc;
    }
    
    NSInteger index = total % self.tableSize;
    
    return index;
}

@end
