import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(TestCapPlugin)
public class TestCapPlugin: CAPPlugin {
    private let implementation = TestCap()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
    
    @objc func concatenateDate(_ call: CAPPluginCall) {
        let value = call.getString("text") ?? ""
        call.resolve([
            "text": implementation.concatenateDate(value),
            "reversedString": implementation.reverseString(value)
        ])
    }
    @objc func reverseString(_ call: CAPPluginCall) {
        let value = call.getString("text") ?? ""
        call.resolve([
            "text": implementation.reverseString(value)
        ])
    }
    
}
