//
//  SecondViewController.m
//  BWFindWildPointer
//
//  Created by bairdweng on 2021/7/19.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	[[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(sayHello) name:@"TESTSAYHELLO" object:nil];
	// Do any additional setup after loading the view.
}

- (void)sayHello {
	NSLog(@"sayHello");
}

- (void)dealloc {
	NSLog(@"SecondViewController");
}

@end
