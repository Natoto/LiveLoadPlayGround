//
//  DYAEngine.h
//  DynamicKit
//
//  Created by boob on 22/6/2018.
//  Copyright © 2018 boob. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DYAEngine : NSObject

- (BOOL)startAtPort:(uint16_t)port error:(NSError **)error;
- (void)stop;

@end
