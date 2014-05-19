//
//  CMBBinarySearchTree.h
//  BinarySearchTree
//
//  Created by Cole Bratcher on 5/19/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CMBNode.h"

@interface CMBBinarySearchTree : NSObject

- (void)addValue:(NSInteger)value;
- (CMBNode *)findNodeForValue:(NSInteger)value;
- (void)printAllNodes;
- (void)printValueForNode:(CMBNode *)node;
- (void)deleteNode:(NSInteger)nodeValue;

@end
