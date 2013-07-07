PMDate
======

PMDate is a category adding subscripting to NSDate to use litteral date modifiers as "2 hours ago"

## Usage

    NSDate *now = [NSDate now];
    NSDate *yesterday = now[@"yesterday"];
    NSDate *someTimeAgo = now[@"2 weeks ago"];

## Installation

### Manually

  1. Drag'n'drop PMDate.h and PMDate.m wherever you want in your xcode project
  2. add `#import <PMDate/PMDate.h>` to the source files where you want to use PMDate.

### Cocoapods

  1. add "pod 'PMDate'" to your Podfile
  2. run "pod install"
  3. add `#import <PMDate/PMDate.h>` to the source files where you want to use PMDate.

## Requirements

You should be lazy enough to use this instead of coding it yourself.

## Contributing

See CONTRIBUTING file.

## Running the Tests

Hit Command-U in Xcode

## Credits

Subscripting in Objective-C is the work of the LLVW team (I guess)
NSDate is the work of Apple (according to NSDate.h)

## License

PMDate is released under the MIT License. 
See the bundled LICENSE file for details.