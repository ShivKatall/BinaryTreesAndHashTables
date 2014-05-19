//
//  CMBViewController.m
//  BinarySearchTree
//
//  Created by Cole Bratcher on 5/19/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import "CMBViewController.h"

@interface CMBViewController ()

@property CMBBinarySearchTree *searchTree;

@end

@implementation CMBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    _searchTree = [CMBBinarySearchTree new];
    
    [_searchTree addValue:12];
    [_searchTree addValue:121];
    [_searchTree addValue:19];
    [_searchTree addValue:3];
    [_searchTree addValue:712];
    [_searchTree addValue:10101];
    [_searchTree addValue:42];
    
    [_searchTree printAllNodes];
    
    [_searchTree deleteNode:121];
    
    [_searchTree printAllNodes];
    
    
}

@end
