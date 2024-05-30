# KeyboardHideManager

![Icon](Resources/keyboard_icon.png)

[![Language](https://img.shields.io/badge/Swift-5.0+-orange.svg)](https://developer.apple.com/swift/)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/KeyboardHideManager.svg)](https://cocoapods.org/)
[![Platform](https://img.shields.io/cocoapods/p/KeyboardHideManager.svg)](http://cocoadocs.org/docsets/KeyboardHideManager)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](http://mit-license.org/)
[![Awesome-ios](https://img.shields.io/badge/Awesome-ios-ff69b4.svg)](https://github.com/vsouza/awesome-ios#keyboard)
[![Awesome-swift](https://img.shields.io/badge/Awesome-swift-ff69b4.svg)](https://github.com/matteocrippa/awesome-swift#keyboard)
[![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome)


**KeyboardHideManager** - codeless manager to hide keyboard by tapping on views for iOS written in Swift.

![preview](Resources/preview.png)

## Structure

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
	- [CocoaPods](#cocoapods)
	- [Carthage (not supported)](#carthage-not-supported)
	- [Manually](#manually)
- [Usage](#usage)
- [User Iteraction Enabled](#user-iteraction-enabled)
- [Code usage](#code-usage)
- [Xib support](#xib-support)
- [To do](#to-do)
- [License](#license)

## Features

- [x] 3 simple actions to setup
- [x] Multiple views setup
- [x] Codeless usage
- [x] Xib support

## Requirements

- Swift 5.0+
- iOS 12.0+

## Installation

### CocoaPods

```ruby
pod 'KeyboardHideManager', '~> 1.0'
```

<details>
<summary>Full CocoaPods Guide (click to expand)</summary>

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate KeyboardHideManager into your Xcode project using CocoaPods, create file `Podfile` with content:

```ruby
use_frameworks!

target '<Your Target Name>' do
    pod 'KeyboardHideManager', '~> 1.0'
end
```

Then, run the following command:

```bash
$ pod install
```

Close 'Your Target Name'.**xcodeproj** and open 'Your Target Name'.**xcworkspace**.

</details>

### Carthage (not supported)

KeyboardHideManager cannot be used with Carthage in IB due `.framework` issue. Use CocoaPods or Manual install.

### Manually

> If you prefer not to use either of the aforementioned dependency managers, you can integrate KeyboardHideManager into your project manually.

Drag `KeyboardHideManager` folder in your project.

## Usage

- 1. Drag Object from Object library

![usage_1](Resources/usage_1.png)

- 2. Setup `KeyboardHideManager` in Class field

![usage_2](Resources/usage_2.png)

 - 3. Connect views with `targets`

![usage_3](Resources/usage_3.png)

## User Iteraction Enabled

Target must be `UIView` subclass and `user iteraction enabled` is on. You can set it in IB in View section: (example for UILabel)

![user_iteraction_enabled](Resources/user_iteraction_enabled.png)

or in code:

```swift
someView.isUserInteractionEnabled = true
```

## Xib support

To use with xib you must add strong property to controller:

```swift
@IBOutlet var keyboardHideManager: KeyboardHideManager!
```

> Otherwise it will be deinited. It is logic of Objects in xibs.

## To do

- [x] Add example
- [x] Add tests
- [x] Add comments
- [ ] Add CI

## License

KeyboardHideManager is released under the MIT license. See [LICENSE](./LICENSE.md) for details.