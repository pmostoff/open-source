# dateExtensions

This Swift Playground contains a few simple extension functions to the Swift Date type that I've found useful in my own projects.

### toString
Accepts .full, .long, .medium, and .short arguments
Returns a string representation of the current date

### dayOfWeek
Returns a string representation of the current weekday

### monthName
Returns a string representation of the current month

### currentHour
Returns an integer representation of the current hour in a 24 hour clock

### hoursRemaining
Returns an array of integers representing the remaining hours of the day in a 24 hour clock

### beginning(of: )
Accepts .day, .week, .month, .year, and .time arguments
Returns a date value for the beginning of the passed in timeframe

## Installation
Simply copy and the paste the `extension Date { }` portion of the playground into your project. You can include the extension in its own file or within an existing Swift file in your project.

## Requirements
dateExtensions was built and tested using:
- Swift 4

## Author

Programmed and designed by Peter Mostoff. [You can contact me via Twitter](https://twitter.com/pmostoff) if that's something you're interested in. I typically make things for the situations that they're needed in but I like to share my work and I'm sure there are plenty of ways that this can be improved. Please let me know if you have any cool suggestions!

If you're interested, you can visit my personal site to see what I'm up to at [Mostoff.me](http://mostoff.me) or if you want to support my work, check out the apps that I've published on the [App Store](https://itunes.apple.com/tc/developer/peter-mostoff/id1080412491)!

## License
`dateExtensions` is available under the MIT license. See the LICENSE file for more info.
