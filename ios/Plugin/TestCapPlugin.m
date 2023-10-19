// MyPlugin.m
#import "TestCapPlugin.h"

@implementation TestCapPlugin

- (void)echo:(CAPPluginCall *)call {
    // Access parameters using the options property
    NSDictionary *options = [call options];
    NSString *value = options[@"value"];
    
    // Your logic here
    NSString *resultString = [NSString stringWithFormat:@"Echo: %@", value];
    
    // Send the result back to JavaScript
    [call resolve:@{@"result": resultString}];
}
@end

