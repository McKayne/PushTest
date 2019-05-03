//
//  main.m
//  PushTest
//
//  Created by для интернета on 03/05/2019.
//  Copyright © 2019 Nikolay Taran. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NWPusher.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSURL *url = [[NSURL alloc] initWithString:@"file:///Users/admin/Downloads/PerfectTemplate/demoAppCert.p12"];
        
        NSData *pkcs12 = [NSData dataWithContentsOfURL:url];
        NSError *error = nil;
        NWPusher *pusher = [NWPusher connectWithPKCS12Data:pkcs12 password:@"audidemo" environment:NWEnvironmentSandbox error:&error];
        if (pusher) {
            NSLog(@"Connected to APNs");
        } else {
            NSLog(@"Unable to connect: %@", error);
        }
    }
    return 0;
}
