// MyPlugin.h
#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>

@interface TestCapPlugin : CAPPlugin

- (void)echo:(CAPPluginCall *)call;

@end
