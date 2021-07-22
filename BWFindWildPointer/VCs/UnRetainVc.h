//
//  UnRetainVc.h
//  BWFindWildPointer
//
//  Created by bairdweng on 2021/7/19.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UnRetainVc : UIViewController

@property (nonatomic, unsafe_unretained) id objc;
@end

NS_ASSUME_NONNULL_END
