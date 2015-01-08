//
//  MCRemoteLogger.h
//
//  Created by Matteo Crippa on 1/8/15.
//  Copyright (c) 2015 Matteo Crippa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MCRemoteLogger : NSObject

@property (nonatomic, strong) NSString *hostName;
@property (nonatomic, strong) NSString *passWord;

-(id) initLoggerWithHost:(NSString *)host andPassword:(NSString *)pass;

-(BOOL) log:(NSString *)item;

@end
