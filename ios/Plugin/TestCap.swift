import Foundation

@objc public class TestCap: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
