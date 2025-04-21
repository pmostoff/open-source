import UIKit

/// This function accepts two `Double` values, `intervalStart` and `intervalEnd`, and an `Int` value, `steps`, and creates a range with an `Int` number of steps at equal intervals between the two values.
///
/// - Parameters:
///     - intervalStart: The first element of the range.
///     - intervalEnd: The final element of the range.
///     - steps: The number of steps that will be generated between `intervalStart` and `intervalEnd`.
///     - inclusive: Passing `true` includes `intervalStart` and `intervalEnd` within the resulting range. Passing `false` omits them. This does not change the number of generated steps. For example, if passing `true` resulted in an `Array` of 100 items, passing `false` would omit `intervalStart` and `intervalEnd`, resulting in an `Array` of 98 items. The `inclusive` argument defaults to `true`.
/// - Returns: An `Array` of `Double` values.
///
func intervalRange(from intervalStart: Double, to intervalEnd: Double, steps: Int, inclusive: Bool = true) -> [Double] {
    
    let intervalSteps = max(steps, 1)
    
    let modifier = (intervalEnd - intervalStart) / Double(intervalSteps)
    
    var intervalArray: [Double] = []
    
    if inclusive == true {
        intervalArray.append(intervalStart)
    }
    
    for _ in 1..<intervalSteps {
        if let lastArrayItem = intervalArray.last {
            let newElement = lastArrayItem + modifier
            intervalArray.append(newElement)
        } else {
            let newElement = intervalStart + modifier
            intervalArray.append(newElement)
        }
    }
    
    if inclusive == true {
        intervalArray.append(intervalEnd)
    }
    
    return intervalArray
}

// Testing Output For: 1 to 100 with 99 steps.
// This produces a range including every whole number from 1 to 100.
let oneToOneHundred = intervalRange(from: 1, to: 100, steps: 99)
oneToOneHundred.count

// Testing Output For: 0 to 1 with 100 steps.
// This produces a range including fractions at equal intervals between 0 and 1.
let zeroToOne = intervalRange(from: 0.0, to: 1.0, steps: 100)
zeroToOne.count

// Testing Output For: 0 to 10 with 10 steps.
// This produces a range including fractions at equal intervals between 0 and 10.
let zeroToTen = intervalRange(from: 0.0, to: 10.0, steps: 10)
zeroToTen.count

// Testing Output For: 0 to 100 with 100 steps.
// This produces a range including every whole number from 0 to 100.
let inclusiveTrue = intervalRange(from: 0, to: 100, steps: 100)
inclusiveTrue.count
// Passing an inclusive value of false excludes the intervalStart and intervalEnd values.
let inclusiveFalse = intervalRange(from: 0, to: 100, steps: 100, inclusive: false)
inclusiveFalse.count
