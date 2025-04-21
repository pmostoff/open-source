//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

extension Double {
    func cleanValue(maxDecimal: Int = 2, minDecimal: Int? = nil, withCommas: Bool = true) -> String {
        
        let inputNumber = self
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = NumberFormatter.Style.decimal
        numberFormatter.maximumFractionDigits = maxDecimal
        if minDecimal != nil {
            numberFormatter.minimumFractionDigits = minDecimal!
            if minDecimal! > maxDecimal {
                numberFormatter.maximumFractionDigits = minDecimal!
            }
        }
        
        let formattedValue = numberFormatter.string(from: inputNumber as NSNumber)!
        let formattedValueNoCommas = formattedValue.replacingOccurrences(of: ",", with: "")
        
        switch withCommas {
        case true:
            return formattedValue
        case false:
            return formattedValueNoCommas
        }
    }
}

let testValue: Double = 4562938567.09345
let testCleanValue: String = testValue.cleanValue()
let testCleanValueNoCommas: String = testValue.cleanValue(withCommas: false)

// When a minDecimal argument is passed to cleanValue, if minDecimal is larger than maxDecimal
// the minDecimal value will override a lesser maxDecimal value
let minLess: String = testValue.cleanValue(maxDecimal: 4, minDecimal: 2, withCommas: true)
// Here, since minDecimal's value is larger than maxDecimal, maxDecimal is overriden with minDecimal's value
// This causes the extra 0's to be added to the end of the string
let minMore: String = testValue.cleanValue(maxDecimal: 2, minDecimal: 7, withCommas: true)

print(testCleanValue)
print(testCleanValueNoCommas)
