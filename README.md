# CDCircularMenu
> An animated light and easy to use circular menu for you app, made with love and SwiftUI.

CDCircularMenu is a customizable circular menu library created for fun, for you apps. 

![](cdcircularmenu.gif)

## Features

- [x] An animated Circular Menu around a customizable button 
- [x] A set of configuration to fit your app design

## Coming soon features

- [ ] Depends on your thoughts

## Customizable properties

- menuItems: *Your custom list of menu items to be placed around the menu button*
- menuRadius: *The menu radius*
- menuButtonSize: *Your main menu button size*
- menuButtonColor: *Your main menu button color*
- buttonClickCompletion: *The callback handler whenever a menu item is clicked*

## Requirements

- iOS 13 or above
- Swift 5.0
- Xcode 11.4

## Installation

At the moment, the library is only available though Github. A Pod will arrive later.

#### Git

You can use [Git](https://git-scm.com/) to clone `CDCircularMenu` and its example project:

```git
git clone https://github.com/christophedellac/CDCircularMenu
```

#### Manually

1. Download and drop the `Sources` (CDCircularMenu/Sources) folder in your project.  
2. You are already ready to go! Congratulations!  

## Usage

To get the full benefits of `CDCircularMenu`, don't forget to check out the ExampleForCircularMenu XCode project. 

After adding the source folder into your project, you can start using `CDCircularMenu` by following those 3 steps:

- [x] **Step 1: Create your menu items array thanks to the provided MenuItem struct.**

- [x] **Step 2: Create your own completion handler. It should receive an Int (index) as parameter. **

- [x] **Step 3: Anywhere in your view, create a CircularMenu(...) with the required parameters. **

For example: 
``` swift
CircularMenu(menuItems: testMenuItems, menuRadius: 120, menuButtonSize: 60, menuButtonColor: .black, 
buttonClickCompletion: buttonClickHandler(_:))
```

## License

`CDCircularMenu` is under the ``MIT LICENSE``. 
Feel free to share your opinion :)

## Meta

Christophe Dellac - [https://github.com/christophedellac/](https://github.com/christophedellac)
CDCircularMenu - [https://github.com/christophedellac/CDCircularMenu](https://github.com/christophedellac/CDCircularMenu)
