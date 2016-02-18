//
//  CGRect+ManualLayout.swift
//  ManualLayout
//
//  Created by Baris Sencan on 30/03/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import UIKit

public extension CGRect {

  // MARK: - Position

  public var x: CGFloat {
    get {
      return origin.x
    }
    set {
      origin.x = snapToPixel(pointCoordinate: newValue)
    }
  }

  public var y: CGFloat {
    get {
      return origin.y
    }
    set {
      origin.y = snapToPixel(pointCoordinate: newValue)
    }
  }

  public var center: CGPoint {
    get {
      return CGPoint(x: centerX, y: centerY)
    }
    set {
      centerX = newValue.x
      centerY = newValue.y
    }
  }

  public var centerX: CGFloat {
    get {
      return origin.x + size.width / 2
    }
    set {
      x = newValue - size.width / 2
    }
  }

  public var centerY: CGFloat {
    get {
      return origin.y + size.height / 2
    }
    set {
      y = newValue - size.height / 2
    }
  }

  // MARK: - Edges

  public var top: CGFloat {
    get {
      return origin.y
    }
    set {
      y = newValue
    }
  }

  public var right: CGFloat {
    get {
      return origin.x + size.width
    }
    set {
      x = newValue - size.width
    }
  }

  public var bottom: CGFloat {
    get {
      return origin.y + size.height
    }
    set {
      y = newValue - size.height
    }
  }

  public var left: CGFloat {
    get {
      return origin.x
    }
    set {
      x = newValue
    }
  }

  // MARK: - Alternative Edges

  public var top2: CGFloat {
    get {
      return origin.y
    }
    set {
      if newValue <= bottom {
        size.height += snapToPixel(pointCoordinate: top - newValue)
        y = newValue
      } else {
        // Swap top with bottom.
        let newTop = bottom
        size.height = snapToPixel(pointCoordinate: newValue - newTop)
        y = newTop
      }
    }
  }

  public var right2: CGFloat {
    get {
      return origin.x + size.width
    }
    set {
      if newValue >= left {
        size.width += snapToPixel(pointCoordinate: newValue - right)
      } else {
        // Swap left with right.
        let newRight = left
        size.width = snapToPixel(pointCoordinate: newRight - newValue)
        x = newValue
      }
    }
  }

  public var bottom2: CGFloat {
    get {
      return origin.y + size.height
    }
    set {
      if newValue >= top {
        size.height += snapToPixel(pointCoordinate: newValue - bottom)
      } else {
        // Swap bottom with top.
        let newBottom = top
        size.height = snapToPixel(pointCoordinate: newBottom - newValue)
        y = newValue
      }
    }
  }

  public var left2: CGFloat {
    get {
      return origin.x
    }
    set {
      if newValue <= right {
        size.width += snapToPixel(pointCoordinate: left - newValue)
        x = newValue
      } else {
        // Swap right with left.
        let newLeft = right
        size.width = snapToPixel(pointCoordinate: newValue - newLeft)
        x = newLeft
      }
    }
  }
}
