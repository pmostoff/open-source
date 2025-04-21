//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

extension Date {
    
    // Accepts .full, .long, .medium, and .short arguments
    // Returns a string representation of the current date
    func toString(style: DateFormatter.Style) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = style
        return dateFormatter.string(from: self)
    }
    
    // Returns a string representation of the current weekday
    func dayOfWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
    
    // Returns a string representation of the current month
    func monthName() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM"
        return dateFormatter.string(from: self)
    }
    
    // Returns an integer representation of the current hour in a 24 hour clock
    func currentHour() -> Int {
        let currentHour = Calendar.current.dateComponents([.hour], from: Date()).hour
        return currentHour!
    }
    
    // Returns an array of integers representing the remaining hours of the day in a 24 hour clock
    // Can use .count to retrieve the number of hours left in the day
    func hoursRemaining() -> [Int] {
        var hoursRemainingArray:[Int] = []
        
        let currentHour = Calendar.current.dateComponents([.hour], from: Date()).hour
        let hoursRemaining = 23 - currentHour!
        for i in 1...hoursRemaining {
            let time = i + currentHour!
            hoursRemainingArray.append(time)
        }
        return hoursRemainingArray
    }
    
    // TimeFrame enum for use in beginning(of: ) function
    enum TimeFrame {
        case day
        case week
        case month
        case year
        case time
    }
    
    // Accepts .day, .week, .month, .year, and .time arguments
    // Returns a date value for the beginning of the passed in timeframe
    func beginning(of timeFrame: TimeFrame) -> Date {
        
        let calendar = Calendar.current
        
        switch timeFrame {
        case .day:
            let components = calendar.dateComponents([.year, .month, .day], from: self)
            return calendar.date(from: components)!
        case .week:
            let components = calendar.dateComponents([.weekOfYear, .yearForWeekOfYear], from: self)
            return calendar.date(from: components)!
        case .month:
            let components = calendar.dateComponents([.year, .month], from: self)
            return calendar.date(from: components)!
        case .year:
            let components = calendar.dateComponents([.year], from: self)
            return calendar.date(from: components)!
        case .time:
            let components = calendar.dateComponents([], from: self)
            return calendar.date(from: components)!
        }
    }
    
}

// MARK: - Example Usage

// .toString(style: )
Date().toString(style: .full)
Date().toString(style: .long)
Date().toString(style: .medium)
Date().toString(style: .short)

// .currentHour()
print("The current hour is: \(Date().currentHour())")
// .hoursRemaining()
print("There are \(Date().hoursRemaining().count) hours remaining in the day: \(Date().hoursRemaining())")

// .dayOfWeek()
print("The current day of the week is: \(Date().dayOfWeek())")
// .monthName()
print("The current month of the year is: \(Date().monthName())")

// .beginning(of: )
print("Current Day and Time: \(Date().description)")
print("Beginning of This Day: \(Date().beginning(of: .day))")
print("Beginning of This Week: \(Date().beginning(of: .week))")
print("Beginning of This Month: \(Date().beginning(of: .month))")
print("Beginning of This Year: \(Date().beginning(of: .year))")
print("Beginning of Time: \(Date().beginning(of: .time))")
