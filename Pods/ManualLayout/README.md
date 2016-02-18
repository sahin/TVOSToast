ManualLayout [![CocoaPods](https://img.shields.io/cocoapods/l/ManualLayout.svg)](https://github.com/isair/ManualLayout/blob/master/LICENSE) ![CocoaPods](https://img.shields.io/cocoapods/p/ManualLayout.svg)
-----

[![Build Status](https://travis-ci.org/isair/ManualLayout.svg)](https://travis-ci.org/isair/ManualLayout)
[![CocoaPods](https://img.shields.io/cocoapods/v/ManualLayout.svg)](https://cocoapods.org/pods/ManualLayout)
[![Gratipay](https://img.shields.io/gratipay/bsencan91.svg)](https://gratipay.com/bsencan91/)
[![Gitter](https://badges.gitter.im/JOIN CHAT.svg)](https://gitter.im/isair/ManualLayout?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

#Table of Contents

1. [Installation](#installation)
2. [Usage](#usage)
3. [API Cheat Sheet](#api-cheat-sheet)

#Installation

###[Carthage](https://github.com/Carthage/Carthage#installing-carthage)

Add the following line to your [Cartfile](https://github.com/Carthage/Carthage/blob/master/Documentation/Artifacts.md#cartfile).

```
github "isair/ManualLayout"
```

Then do `carthage update`. After that, add the framework to your project.

###[Cocoapods](https://github.com/CocoaPods/CocoaPods)

Add the following line in your `Podfile`.

```
pod "ManualLayout"
```	

#Usage

Just `import ManualLayout` in your code and use the methods and properties provided by the library to layout your views. You can check out the cheat sheet below for a compact list of everything. There are also [example projects](https://github.com/isair/ManualLayout/tree/master/Examples) to get you started.


#API Cheat Sheet

###Smart Assign Operator

The smart assign operator `=~` has only one job; to make your life easier.

```swift
someView.origin =~ (0, 20)
anotherView.size =~ (100, 100)
yetAnotherView.frame =~ (0, 120, view.width, 100)
```

###CGRect/CALayer/UIView Properties

```swift
// For fast positioning.
var origin: CGPoint
var x: CGFloat 
var y: CGFloat
var center: CGPoint
var centerX: CGFloat
var centerY: CGFloat
var top: CGFloat
var right: CGFloat
var bottom: CGFloat
var left: CGFloat

// For fast sizing.
var size: CGSize
var width: CGFloat
var height: CGFloat

// Alternate edges. Their names may change in the near future.
var top2: CGFloat
var right2: CGFloat
var bottom2: CGFloat
var left2: CGFloat
```

The difference between alternate edges and normal edges require a bit of explaining. Imagine we have a view at position (0, 0) of size (100, 100) named *myView*. If we do `myView.right = 200`, then its position is now (100, 0) and its size remains unchaged. However, back when our view was located at (0, 0), if we had done `myView.right2 = 200`, then *myView* would have still been at (0, 0) but would have had a size of (200, 100).

So basically, *setting a normal edge's position drags the whole view along with that edge but setting an alternative edge's position drags just that edge*. And don't worry if you, for example, try to drag a left edge past its view's right edge. Edge swapping is done automatically so you don't have to worry about it.

###UIView Methods

Just one method with two variants for now, and those are used for easy size calculations.

```swift
func sizeToFit(width: CGFloat, height: CGFloat) -> CGSize
func sizeToFit(constrainedSize: CGSize) -> CGSize
```

So let's say that you have a label inside a view and you want to lay it out with an inset of 4 points on all sides, you could easily do the following:

```swift
myLabel.sizeToFit(inset(myView.size, 4))
myLabel.origin =~ (4, 4)
```

Done!

###UIScrollView Properties

```swift
var contentWidth: CGFloat
var contentHeight: CGFloat

var contentTop: CGFloat // Always equal to 0. Read-only.
var contentLeft: CGFloat // Always equal to 0. Read-only.
var contentBottom: CGFloat // contentHeight alias.
var contentRight: CGFloat // contentWidth alias.

var viewportTop: CGFloat // contentOffset.y alias.
var viewportLeft: CGFloat // contentOffset.x alias.
var viewportBottom: CGFloat // conentOffset.y + view height
var viewportRight: CGFloat // contentOffset.x + view width
```

###UIViewController Properties

All UIViewController properties are read only. They offer easy read access to a controller's view's properties.

```swift
var bounds: CGRect

var center: CGPoint
var centerX: CGFloat
var centerY: CGFloat

var size: CGSize
var width: CGFloat
var height: CGFloat

var top: CGFloat // Top layout guide y coordinate.
var right: CGFloat // Equal to the width of the controller's view.
var bottom: CGFloat // Bottom layout guide y coordinate.
var left: CGFloat // Always equal to 0.
```

###Helper Methods

These functions never modify the view/layer/rectangle/etc they are passed.

```swift
func inset(view: UIView, amount: CGFloat) -> CGRect
func inset(layer: CALayer, amount: CGFloat) -> CGRect
func inset(rect: CGRect, amount: CGFloat) -> CGRect

func inset(view: UIView, dx: CGFloat, dy: CGFloat) -> CGRect
func inset(layer: CALayer, dx: CGFloat, dy: CGFloat) -> CGRect
func inset(rect: CGRect, dx: CGFloat, dy: CGFloat) -> CGRect

func inset(view: UIView, top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> CGRect
func inset(layer: CALayer, top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> CGRect
func inset(rect: CGRect, top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> CGRect

func inset(size: CGSize, amount: CGFloat) -> CGSize
func inset(size: CGSize, dx: CGFloat, dy: CGFloat) -> CGSize
func inset(size: CGSize, top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> CGSize
```

```swift
func offset(view: UIView, amount: CGFloat) -> CGRect
func offset(layer: CALayer, amount: CGFloat) -> CGRect
func offset(rect: CGRect, amount: CGFloat) -> CGRect

func offset(view: UIView, dx: CGFloat, dy: CGFloat) -> CGRect
func offset(layer: CALayer, dx: CGFloat, dy: CGFloat) -> CGRect
func offset(rect: CGRect, dx: CGFloat, dy: CGFloat) -> CGRect

func offset(point: CGPoint, amount: CGFloat) -> CGPoint
func offset(point: CGPoint, dx: CGFloat, dy: CGFloat) -> CGPoint
```
