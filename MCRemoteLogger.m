//
//  MCRemoteLogger.m
//
//  Created by Matteo Crippa on 1/8/15.
//  Copyright (c) 2015 Matteo Crippa. All rights reserved.
//

#import "MCRemoteLogger.h"
#import <AFNetworking/AFNetworking.h>

@implementation MCRemoteLogger

-(id) init{

    if ((self = [super init])){}

    return self;
}

-(id) initLoggerWithHost:(NSString *)host andPassword:(NSString *)pass{

    if ((self = [super init]))
    {
        if(host.length == 0){
         [NSException raise:@"User init" format:@"Host length of %d is invalid", (int)host.length];
        }

        self.hostName = host;
        self.passWord = pass;

    }

    return self;
}

-(BOOL) log:(NSString *)item{


    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSDictionary *parameters = @{@"password": self.passWord, @"data":item};

    [manager POST:self.hostName parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];

    return true;

}



@end
