//
//  HelperFunctions.swift
//  ManualLayout
//
//  Created by Baris Sencan on 26/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import UIKit

internal func snapToPixel(pointCoordinate coordinate: CGFloat) -> CGFloat {
  let screenScale = UIScreen.mainScreen().scale
  return round(coordinate * screenScale) / screenScale
}

//MARK: - Insetting

public func inset(view: UIView, amount: CGFloat) -> CGRect {
  return inset(view.frame, amount: amount)
}

public func inset(layer: CALayer, amount: CGFloat) -> CGRect {
  return inset(layer.frame, amount: amount)
}

public func inset(rect: CGRect, amount: CGFloat) -> CGRect {
  return CGRectInset(rect, amount, amount)
}

public func inset(view: UIView, dx: CGFloat, dy: CGFloat) -> CGRect {
  return inset(view.frame, dx: dx, dy: dy)
}

public func inset(layer: CALayer, dx: CGFloat, dy: CGFloat) -> CGRect {
  return inset(layer.frame, dx: dx, dy: dy)
}

public func inset(rect: CGRect, dx: CGFloat, dy: CGFloat) -> CGRect {
  return CGRectInset(rect, dx, dy)
}

public func inset(view: UIView, top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> CGRect {
  return inset(view.frame, top: top, left: left, bottom: bottom, right: right)
}

public func inset(layer: CALayer, top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> CGRect {
  return inset(layer.frame, top: top, left: left, bottom: bottom, right: right)
}

public func inset(rect: CGRect, top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> CGRect {
  return CGRect(
    origin: offset(rect.origin, dx: left, dy: top),
    size: inset(rect.size, top: top, left: left, bottom: bottom, right: right))
}

public func inset(size: CGSize, amount: CGFloat) -> CGSize {
  return inset(size, dx: amount, dy: amount)
}

public func inset(size: CGSize, dx: CGFloat, dy: CGFloat) -> CGSize {
  return inset(size, top: dy, left: dx, bottom: dy, right: dx)
}

public func inset(size: CGSize, top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> CGSize {
  return CGSize(
    width: size.width - left - right,
    height: size.height - top - bottom)
}

// MARK: - Offsetting

public func offset(view: UIView, amount: CGFloat) -> CGRect {
  return offset(view.frame, amount: amount)
}

public func offset(layer: CALayer, amount: CGFloat) -> CGRect {
  return offset(layer.frame, amount: amount)
}

public func offset(rect: CGRect, amount: CGFloat) -> CGRect {
  return CGRectOffset(rect, amount, amount)
}

public func offset(view: UIView, dx: CGFloat, dy: CGFloat) -> CGRect {
  return offset(view.frame, dx: dx, dy: dy)
}

public func offset(layer: CALayer, dx: CGFloat, dy: CGFloat) -> CGRect {
  return offset(layer.frame, dx: dx, dy: dy)
}

public func offset(rect: CGRect, dx: CGFloat, dy: CGFloat) -> CGRect {
  return CGRectOffset(rect, dx, dy)
}

public func offset(point: CGPoint, amount: CGFloat) -> CGPoint {
  return offset(point, dx: amount, dy: amount)
}

public func offset(point: CGPoint, dx: CGFloat, dy: CGFloat) -> CGPoint {
  return CGPoint(x: point.x + dx, y: point.y + dy)
}
