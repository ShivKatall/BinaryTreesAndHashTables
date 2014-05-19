//
//  CMBNode.h
//  BinarySearchTree
//
//  Created by Cole Bratcher on 5/19/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CMBNode : NSObject

@property (nonatomic) NSInteger value;
@property (nonatomic,strong) CMBNode *leftChild;
@property (nonatomic,strong) CMBNode *rightChild;
@property (nonatomic, weak) CMBNode *parentNode;

+ (id)nodeWithValue:(NSInteger)value;
- (void)addNode:(CMBNode *)newNode;

@end
