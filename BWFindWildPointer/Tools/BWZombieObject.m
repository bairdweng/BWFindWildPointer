//
//  BWZombieObject.m
//  BWFindWildPointer
//
//  Created by bairdweng on 2021/7/19.
//

#import "BWZombieObject.h"

@implementation BWZombieObject

- (id)forwardingTargetForSelector:(SEL)aSelector {
	NSLog(@"发生野指针的Class:%@,Selector:%@", NSStringFromClass(self.origClass), NSStringFromSelector(aSelector));
	abort();
	return nil;
}

- (void)dealloc {
	NSLog(@"发生野指针的Class:%@,Selector:%@", NSStringFromClass(self.origClass), @"dealloc");
	abort();
}

@end
