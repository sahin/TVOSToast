//
//  UIView+ManualLayout.swift
//  ManualLayout
//
//  Created by Baris Sencan on 23/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import UIKit

// I wish there was an easier way to do this in Swift.
public extension UIView {

  // MARK: - Position

  public var origin: CGPoint {
    get { return layer.origin }
    set { layer.origin = newValue }
  }

  public var x: CGFloat {
    get { return layer.x }
    set { layer.x = newValue }
  }

  public var y: CGFloat {
    get { return layer.y }
    set { layer.y = newValue }
  }

  public var centerX: CGFloat {
    get { return layer.centerX }
    set { layer.centerX = newValue }
  }

  public var centerY: CGFloat {
    get { return layer.centerY }
    set { layer.centerY = newValue }
  }

  // MARK: - Size

  public var size: CGSize {
    get { return layer.size }
    set { layer.size = newValue }
  }

  public var width: CGFloat {
    get { return layer.width }
    set { layer.width = newValue }
  }

  public var height: CGFloat {
    get { return layer.height }
    set { layer.height = newValue }
  }

  // MARK: - Edges

  public var top: CGFloat {
    get { return layer.top }
    set { layer.top = newValue }
  }

  public var right: CGFloat {
    get { return layer.right }
    set { layer.right = newValue }
  }

  public var bottom: CGFloat {
    get { return layer.bottom }
    set { layer.bottom = newValue }
  }

  public var left: CGFloat {
    get { return layer.left }
    set { layer.left = newValue }
  }

  // MARK: - Alternative Edges

  public var top2: CGFloat {
    get { return layer.top2 }
    set { layer.top2 = newValue }
  }

  public var right2: CGFloat {
    get { return layer.right2 }
    set { layer.right2 = newValue }
  }

  public var bottom2: CGFloat {
    get { return layer.bottom2 }
    set { layer.bottom2 = newValue }
  }

  public var left2: CGFloat {
    get { return layer.left2 }
    set { layer.left2 = newValue }
  }

  // MARK: - Automatic Sizing

  public func sizeToFit(width: CGFloat, _ height: CGFloat) -> CGSize {
    return sizeToFit(CGSize(width: width, height: height))
  }

  public func sizeToFit(constrainedSize: CGSize) -> CGSize {
    var newSize = sizeThatFits(constrainedSize)
    newSize.width = min(newSize.width, constrainedSize.width)
    newSize.height = min(newSize.height, constrainedSize.height)
    size = newSize
    return newSize
  }
}
