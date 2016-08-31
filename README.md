# EtsuriLoaderView

[![CI Status](http://img.shields.io/travis/wahyu sumartha/EtsuriLoaderView.svg?style=flat)](https://travis-ci.org/wahyu sumartha/EtsuriLoaderView)
[![Version](https://img.shields.io/cocoapods/v/EtsuriLoaderView.svg?style=flat)](http://cocoapods.org/pods/EtsuriLoaderView)
[![License](https://img.shields.io/cocoapods/l/EtsuriLoaderView.svg?style=flat)](http://cocoapods.org/pods/EtsuriLoaderView)
[![Platform](https://img.shields.io/cocoapods/p/EtsuriLoaderView.svg?style=flat)](http://cocoapods.org/pods/EtsuriLoaderView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

EtsuriLoaderView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "EtsuriLoaderView"
```

Usage: 
    
EtsuriLoaderView is very straight forward. Simply call this class function to show the animation loader

```swift
EtsuriLoaderView.showLoading(fromView: self.view, screenAdjustment: CGPointMake(0, 0), isOverlayed: true)
```
    
    
once you done with your animation what you need to do just call one line function to remove your animation from the view 

```swift
EtsuriLoaderView.hideLoadingView(fromView: self.view)
```

## Changelog

Version 0.0.4: 
- adding overlay effect 

## Author

wahyu sumartha, wahyusumartha@gmail.com

## License

EtsuriLoaderView is available under the MIT license. See the LICENSE file for more info.

