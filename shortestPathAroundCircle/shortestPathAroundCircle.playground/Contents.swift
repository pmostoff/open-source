import UIKit

/// This function accepts two `Double` values that represent points on the circumference of a circle. These values should be between `0.0` and `360.0` (within a 360 degree arc of a circle). The function then determines the distance of two arcs: one travelling clockwise around the circle between the two points, the other travelling counter-clockwise. This allows you to then execute further code based on whether the shortest path between the points is a clockwise or counter-clockwise translation.
///
/// - Parameters:
///     - pointOne: One of two points on the circumference of a circle.
///     - pointTwo: One of two points on the circumference of a circle.
///
func shortestPathAroundCircle(from pointOne: Double, to pointTwo: Double) -> Double {
    
    let distanceCW = abs(pointOne - pointTwo)
    let distanceCCW = abs(distanceCW - 360)
    
    // Return shorter distance
    if distanceCW <= distanceCCW {
        // If clockwise path is shorter do this...
        return distanceCW
    } else {
        // If counter-clockwise path is shorter do this...
        return distanceCCW
    }
    
}

let pointOne: Double = 30
let pointTwo: Double = 220

shortestPathAroundCircle(from: pointOne, to: pointTwo)
