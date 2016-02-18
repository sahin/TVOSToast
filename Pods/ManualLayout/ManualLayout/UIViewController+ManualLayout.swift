//
//  UIViewController+ManualLayout.swift
//  ManualLayout
//
//  Created by Baris Sencan on 25/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import UIKit

public extension UIViewController {

  public var bounds: CGRect {
    return view.bounds
  }

  // MARK: - Center

  public var center: CGPoint {
    return view.center
  }

  public var centerX: CGFloat {
    return view.centerX
  }

  public var centerY: CGFloat {
    return view.centerY
  }

  // MARK: - Size

  public var size: CGSize {
    return view.size
  }

  public var width: CGFloat {
    return view.width
  }

  public var height: CGFloat {
    return view.height
  }

  // MARK: - Edges

  public var top: CGFloat {
    return topLayoutGuide.length
  }

  public var right: CGFloat {
    return view.width
  }

  public var bottom: CGFloat {
    return view.height - bottomLayoutGuide.length
  }

  public var left: CGFloat {
    return 0
  }
}
