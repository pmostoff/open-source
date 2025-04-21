# doubleExtensions

This Swift Playground contains a few simple extension functions to the Swift Double type that I've found useful in my own projects.

### cleanValue
Returns a string representation of a Double value.
Accepts arguments for:
maxDecimal
- Defaults to 2 decimal places
- Passing in a custom value
minDecimal -> No default
- No default, optional value
- When passing in a value, if the minDecimal is greater than the maxDecimal value (default of 2), the maxDecimal will also be set to the value passed in for minDecimal
withCommas -> Defaults to true
- Defaults to true
- Returns a string with commas at the traditional places (thousands, millions, etc.)

## Installation
Simply copy and the paste the `extension Double { }` portion of the playground into your project. You can include the extension in its own file or within an existing Swift file in your project.

## Requirements
doubleExtensions was built and tested using:
- Swift 4

## Author

Programmed and designed by Peter Mostoff. [You can contact me via Twitter](https://twitter.com/pmostoff) if that's something you're interested in. I typically make things for the situations that they're needed in but I like to share my work and I'm sure there are plenty of ways that this can be improved. Please let me know if you have any cool suggestions!

If you're interested, you can visit my personal site to see what I'm up to at [Mostoff.me](http://mostoff.me) or if you want to support my work, check out the apps that I've published on the [App Store](https://itunes.apple.com/tc/developer/peter-mostoff/id1080412491)!

## License
`doubleExtensions` is available under the MIT license. See the LICENSE file for more info.
