TVOSToast [![codebeat](https://codebeat.co/badges/36759a04-90ff-4a08-b878-9af49a399e2f)](https://codebeat.co/projects/github-com-movielala-tvostoast)
===

Toast component for tvOS with built-in siri remote hint support!

It looks like this:  
  
![alt tag](https://raw.githubusercontent.com/cemolcay/TVOSToast/master/toast.png)

Installation
----

#### CocoaPods

``` ruby
pod 'TVOSToast'
```

Usage
----

Create a `TVOSToastStyle` and assign it your TVOSToast instance's `style` property.
If you do not style, it will shows up with default style.
Since `TVOSToastStyle` is a struct and all of properties are optional, you can set style's specific properties that fits your needs.

Highlights of style are presentation position (top left, bottom right etc), show duration, text style and appearance properties

For toast content you have several options:

* `text: String?`
* `attributedText: NSAttributedString?` 
* `hintText: TVOSToastHintText?`
* `customContent: UIView?`

Setting up one of these are enough for your toast !

``` swift
    let toast = TVOSToast(frame: CGRect(x: 0, y: 0, width: 800, height: 140))
    toast.style.position = TVOSToastPosition.TopRight(insets: 20)
    toast.text = "This is regular text"
    presentToast(toast)
```

TVOSToastRemoteHintText
----

This is the one of main reasons why we created this component: toasting quick tips of how to use siri remote of apple tv in the app.

Resources include all of siri remote button png files with black or white option.

This is how to show a `TVOSToast` with hint text:

``` swift
    let toast = TVOSToast(frame: CGRect(x: 0, y: 0, width: 800, height: 140))
    toast.style.position = TVOSToastPosition.Bottom(insets: 20)
    toast.hintText = TVOSToastHintText(elements: "Press the ", TVOSToastRemoteButtonType.MenuWhite, " button to exit app")
    presentToast(toast)
```

TVOSToastPosition
----

This is the enum of toast position.
`insets: CGFloat` property sets an inset from presenting view's edge

``` swift
public enum TVOSToastPosition {
  case Top(insets: CGFloat)
  case TopLeft(insets: CGFloat)
  case TopRight(insets: CGFloat)
  case Bottom(insets: CGFloat)
  case BottomLeft(insets: CGFloat)
  case BottomRight(insets: CGFloat)
}
```

Toast
----

You can directly call `TVOSToast`s `presentOnView:` function to toast in a view or call `presentToast:` function of `UIViewController` which is an extension to present toast in view controller's view.


### Authors
* [Cem Olcay](https://github.com/cemolcay)

### Other tvOS projects
* [TVOSSlideViewController](https://github.com/movielala/TVOSSlideViewController)
* [TVOSButton](https://github.com/movielala/TVOSButton)
