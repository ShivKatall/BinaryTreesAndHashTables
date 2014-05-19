//
//  CMBBinarySearchTree.m
//  BinarySearchTree
//
//  Created by Cole Bratcher on 5/19/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import "CMBBinarySearchTree.h"

@interface CMBBinarySearchTree ()

@property (nonatomic, strong) CMBNode *root;

@end


@implementation CMBBinarySearchTree

- (void)addValue:(NSInteger)value
{
    CMBNode *newNode = [CMBNode nodeWithValue:value];
    
    if (!_root) {
        _root = newNode;
        return;
    }
    else {
        [_root addNode:newNode];
    }
}

- (CMBNode *)findNodeForValue:(NSInteger)value
{
    CMBNode *searchNode = [self findNodeForValue:value onNode:_root];
    return searchNode;
}

- (CMBNode *)findNodeForValue:(NSInteger)value onNode:(CMBNode *)node
{
    if (node) {
        if (value == node.value) {
            return node;
        } else if (value < node.value) {
            return [self findNodeForValue:value onNode:node.leftChild];
            
        } else if (value > node.value) {
            return [self findNodeForValue:value onNode:node.rightChild];
        }
    }
    return node;
}

- (void)printAllNodes
{
    [self printValueForNode:_root];
}

- (void)printValueForNode:(CMBNode *)node
{
    if (!node) {
        return;
    }
    
    NSLog(@"%ld", (long)node.value);
    [self printValueForNode:node.leftChild];
    [self printValueForNode:node.rightChild];
}

- (void)deleteNode:(NSInteger)nodeValue
{
    CMBNode *nodeToDelete = [self findNodeForValue:nodeValue];
    
    CMBNode *smallestNode = [self findSmallestNodeInNode:nodeToDelete.rightChild];
    
    nodeToDelete.value = smallestNode.value;
    
    if (smallestNode.parentNode.leftChild) {
        smallestNode.parentNode.leftChild = nil;
        
    } else if (!smallestNode.parentNode.leftChild && smallestNode.parentNode.rightChild) {
        smallestNode.parentNode = smallestNode.parentNode.rightChild;
        smallestNode = nil;
    }
}

- (CMBNode *)findSmallestNodeInNode:(CMBNode *)node
{
    
    while (node.leftChild)
    {
        node = node.leftChild;
    }

    return node;
}


@end
