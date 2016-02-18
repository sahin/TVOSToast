//
//  CALayer+ManualLayout.swift
//  ManualLayout
//
//  Created by Baris Sencan on 23/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import UIKit

public extension CALayer {

  // MARK: - Position

  public var origin: CGPoint {
    get {
      return frame.origin
    }
    set {
      x = newValue.x
      y = newValue.y
    }
  }

  public var x: CGFloat {
    get { return frame.x }
    set { frame.x = newValue }
  }

  public var y: CGFloat {
    get { return frame.y }
    set { frame.y = newValue }
  }

  public var center: CGPoint {
    get { return frame.center }
    set { frame.center = newValue }
  }

  public var centerX: CGFloat {
    get { return frame.centerX }
    set { frame.centerX = newValue }
  }

  public var centerY: CGFloat {
    get { return frame.centerY }
    set { frame.centerY = newValue }
  }

  // MARK: - Size

  public var size: CGSize {
    get {
      return frame.size
    }
    set {
      width = newValue.width
      height = newValue.height
    }
  }

  public var width: CGFloat {
    get {
      return frame.size.width
    }
    set {
      frame.size.width = snapToPixel(pointCoordinate: newValue)
    }
  }

  public var height: CGFloat {
    get {
      return frame.size.height
    }
    set {
      frame.size.height = snapToPixel(pointCoordinate: newValue)
    }
  }

  // MARK: - Edges

  public var top: CGFloat {
    get { return frame.top }
    set { frame.top = newValue }
  }

  public var right: CGFloat {
    get { return frame.right }
    set { frame.right = newValue }
  }

  public var bottom: CGFloat {
    get { return frame.bottom }
    set { frame.bottom = newValue }
  }

  public var left: CGFloat {
    get { return frame.left }
    set { frame.left = newValue }
  }

  // MARK: - Alternative Edges

  public var top2: CGFloat {
    get { return frame.top2 }
    set { frame.top2 = newValue }
  }

  public var right2: CGFloat {
    get { return frame.right2 }
    set { frame.right2 = newValue }
  }

  public var bottom2: CGFloat {
    get { return frame.bottom2 }
    set { frame.bottom2 = newValue }
  }

  public var left2: CGFloat {
    get { return frame.left2 }
    set { frame.left2 = newValue }
  }
}
