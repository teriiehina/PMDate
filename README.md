# PMDate 
[![Coverage Status](https://coveralls.io/repos/teriiehina/PMDate/badge.svg?branch=master)](https://coveralls.io/r/teriiehina/PMDate?branch=master)
[![Build Status](https://travis-ci.org/teriiehina/PMDate.svg?branch=master)](https://travis-ci.org/teriiehina/PMDate)

======


`PMDate` is a category adding subscripting to `NSDate` to use litteral date modifiers as "2 hours ago"

## Usage

    NSDate *now = [NSDate now];
    NSDate *yesterday = now[@"yesterday"];
    NSDate *dayBeforeYesterday = yesterday[@"yesterday"];
    NSDate *someTimeAgo = now[@"2 weeks ago"];

## Installation

### Manually

  1. Drag'n'drop `PMDate.h` and `PMDate.m` wherever you want in your xcode project
  2. add `#import "NSDate+PMDate.h"` to the source files where you want to use `PMDate`.

### Cocoapods

  1. add `pod 'PMDate' , :git => "https://github.com/teriiehina/PMDate"` to your Podfile
  2. run `pod install`
  3. add `#import <PMDate/NSDate+PMDate.h>` to the source files where you want to use `PMDate`.

## Requirements

You should be lazy enough to use this instead of coding it yourself.

## Contributing

If you want to add something to `PMDate`, it would be greatly appreciated to:

  - add tests for new methods
  - add tests for any modifications to existing methods
  - use a 4 spaces (aka no TAB) indentation
  - use the [Allman indentation style](http://en.wikipedia.org/wiki/Indent_style#Allman_style)

## Running the Tests

Hit Command-U in Xcode.

## Credits

  - Subscripting in Objective-C is the work of the LLVW team (I guess)
  - NSDate is the work of Apple (according to NSDate.h)
  - The structure of this file is (very) strongly inspired from [this post](http://williamdurand.fr/2013/07/04/on-open-sourcing-libraries/)

## License

`PMDate` is released under the MIT License. 
See the bundled LICENSE file for details.
