//
//  ViewController.swift
//  TVOSToast
//
//  Created by Cem Olcay on 17/02/16.
//  Copyright © 2016 MovieLaLa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    let tap = UITapGestureRecognizer(target: self, action: "showToast:")
    tap.allowedPressTypes = [UIPressType.Select.rawValue]
    view.addGestureRecognizer(tap)
  }

  func showToast(tap: UITapGestureRecognizer) {
    showToastWithAttributedString()
    showToastWithHintText()
    showToastWithText()
  }

  // Examples

  func showToastWithHintText() {
    let toast = TVOSToast(frame: CGRect(x: 0, y: 0, width: 800, height: 140))
    toast.style.position = TVOSToastPosition.Bottom(insets: 20)
	toast.hintText = TVOSToastHintText(elements: "Press the" + TVOSToastRemoteButtonType.MenuWhite + " button to exit app")
    presentToast(toast)
  }

  func showToastWithAttributedString() {
    let toast = TVOSToast(frame: CGRect(x: 0, y: 0, width: 800, height: 140))
    toast.style.position = TVOSToastPosition.TopLeft(insets: 20)
    toast.attributedText = NSAttributedString(attributedStrings:
      NSAttributedString(
        text: "This is ",
        font: UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline),
        color: UIColor.whiteColor()),
      NSAttributedString(
        text: "attributed string",
        font: UIFont.italicSystemFontOfSize(25),
        color: UIColor.whiteColor()))
    presentToast(toast)
  }

  func showToastWithText() {
    let toast = TVOSToast(frame: CGRect(x: 0, y: 0, width: 800, height: 140))
    toast.style.position = TVOSToastPosition.TopRight(insets: 20)
    toast.text = "This is regular text"
    presentToast(toast)
  }
}

