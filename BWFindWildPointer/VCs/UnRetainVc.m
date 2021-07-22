//
//  UnRetainVc.m
//  BWFindWildPointer
//
//  Created by bairdweng on 2021/7/19.
//

#import "UnRetainVc.h"

@interface UnRetainVc ()


@end

@implementation UnRetainVc


- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
	{
		UIView* testObj = [[UIView alloc] init];
		[testObj release];
		for (int i = 0; i < 10; i++) {
			UIView* testView = [[UIView alloc] initWithFrame:CGRectMake(0,200,CGRectGetWidth(self.view.bounds), 60)];
			[self.view addSubview:testView];
		}
		[testObj setNeedsLayout];
	}
}

- (void)viewDidLoad {
	[super viewDidLoad];
	self.view.backgroundColor = [UIColor whiteColor];

	// Do any additional setup after loading the view.
}
- (void)dealloc {
	[super dealloc];
	NSLog(@"UnRetainVc被释放了======");
}

/*
 #pragma mark - Navigation

   // In a storyboard-based application, you will often want to do a little preparation before navigation
   - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
   }
 */

@end
