//
//  CMBNode.m
//  BinarySearchTree
//
//  Created by Cole Bratcher on 5/19/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import "CMBNode.h"

@implementation CMBNode

+ (id)nodeWithValue:(NSInteger)value
{
    CMBNode *newNode = [CMBNode new];
    newNode.value = value;
    
    return newNode;
}

- (void)addNode:(CMBNode *)newNode
{
    newNode.parentNode = self;
    if (newNode.value < _value) {
        if (!_leftChild) {
            _leftChild = newNode;
            return;
            
        } else {
            [_leftChild addNode:newNode];
        }
        
    } else if (newNode.value > _value) {
        if (!_rightChild) {
            _rightChild = newNode;
            return;
            
        } else {
            [_rightChild addNode:newNode];
        }
    }
}

@end
