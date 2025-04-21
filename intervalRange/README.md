# intervalRange

This Swift Playground demonstrates a function I wrote in order to produce an array of `Double` values at equal intervals between two provided `Double` values. 

### `intervalStart` Parameter
The `intervalStart` argument accepts a `Double` value as the first element of the range. 

### `intervalEnd` Parameter
The `intervalEnd` argument accepts a `Double` value as the final element of the range.

### `steps` Parameter
The `steps` argument accepts an `Int` value as the number of steps that will be generated between `intervalStart` and `intervalEnd`.

### `inclusive` Parameter
The `inclusive` argument accepts a boolean value of `true` or `false`.
When set to `true`, the resulting array will include the `intervalStart` and `intervalEnd`.
When set to `false`, the resulting array will omit `intervalStart` and `intervalEnd`.
Whether set to `true` or `false`, the intervals that are produced will not be affected.
The `inclusive` argument defaults to true.

## Installation
Simply copy and the paste the `intervalRange` function into your project.

## Requirements
`intervalRange` was built and tested using:
- Swift 4

## Author

Programmed and designed by Peter Mostoff. [You can contact me via Twitter](https://twitter.com/pmostoff) if that's something you're interested in. I typically make things for the situations that they're needed in but I like to share my work and I'm sure there are plenty of ways that this can be improved. Please let me know if you have any cool suggestions!

If you're interested, you can visit my personal site to see what I'm up to at [Mostoff.me](http://mostoff.me) or if you want to support my work, check out the apps that I've published on the [App Store](https://itunes.apple.com/tc/developer/peter-mostoff/id1080412491)!

## License
`intervalRange` is available under the MIT license. See the LICENSE file for more info.
