//
//  YourAlertClass.m
//  Plugin
//
//  Created by Isd Manager on 18/10/23.
//  Copyright © 2023 Max Lynch. All rights reserved.
//

#import <Foundation/Foundation.h>
// YourAlertClass.m

#import "YourAlertClass.h"

@implementation YourAlertClass

+ (void)showAlertWithString:(NSString *)alertString {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Alert"
                                                                             message:alertString
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK"
                                                       style:UIAlertActionStyleDefault
                                                     handler:nil];
    
    [alertController addAction:okAction];
    
    // Get the root view controller from the current window
    UIViewController *rootViewController = [UIApplication sharedApplication].delegate.window.rootViewController;
    
    // Present the alert
    [rootViewController presentViewController:alertController animated:YES completion:nil];
}

@end
