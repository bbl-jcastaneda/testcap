import Foundation

@objc public class TestCap: NSObject {
    
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
    
    @objc public func concatenateDate(_ value: String) -> String {
        print(value)
        let currentDate = Date()
            
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
            
        let formattedDate = dateFormatter.string(from: currentDate)
        let concatenatedString = "\(value) \(formattedDate)"
        
        return concatenatedString
    }
    
    @objc public func reverseString(_ value: String) -> String {
        print(value)
        let reversedCharacters = value.reversed()
        let reversedString = String(reversedCharacters)
        return reversedString
    }
}
