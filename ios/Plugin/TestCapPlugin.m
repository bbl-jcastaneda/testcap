#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>
#import "YourAlertClass.h"
// Define the plugin using the CAP_PLUGIN Macro, and
// each method the plugin supports using the CAP_PLUGIN_METHOD macro.
CAP_PLUGIN(TestCapPlugin, "TestCap",
           CAP_PLUGIN_METHOD(echo, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(showAlert, CAPPluginReturnPromise);
)

- (void)showAlert:(CAPPluginCall *)call {
  NSString *message = [call getString:@"message"];
  [YourAlertClass showAlertWithString:message];
  [call resolve]; // Resolve the promise
}
