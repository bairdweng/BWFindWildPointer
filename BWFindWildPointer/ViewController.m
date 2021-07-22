//
//  ViewController.m
//  BWFindWildPointer
//
//  Created by bairdweng on 2021/7/19.
//

#import "ViewController.h"
#import "BWWildPointerChecker.h"
#import "UnRetainVc.h"

@interface ViewController ()

@property (nonatomic, assign) NSArray *array;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	startWildPointerCheck();
	// Do any additional setup after loading the view.
}

- (IBAction)switchChange:(UISwitch *)sender {
	if (sender.on) {
		startWildPointerCheck();
	}
	else {
		stopWildPointerCheck();
	}
}

- (IBAction)clickOntheRetain:(id)sender {
	UnRetainVc *vc = [UnRetainVc new];
	[self.navigationController pushViewController:vc animated:YES];
}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
}

- (IBAction)sayHello:(id)sender {
	self.array  = @[@"2",@"3"];
	NSLog(@"array=====%@",self.array);
}

- (NSArray *)array3 {
	return @[@"hello",@"hello2"];
}

- (void)dealloc {

}
@end
