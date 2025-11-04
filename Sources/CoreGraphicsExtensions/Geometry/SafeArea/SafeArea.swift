//
//  SafeArea.swift
//  CoreGraphicsExtensions
//
//  Created by Anton Heestand on 2025-08-26.
//

import CoreGraphics
import SwiftUI

public struct SafeArea: Equatable, Sendable {
    /// Size ignoring safe area
    public let size: CGSize
    /// Frame within safe area
    public let frame: CGRect
    /// Safe area insets
    public let insets: EdgeInsets
    public init(size: CGSize, insets: EdgeInsets) {
        self.size = size + CGSize(width: insets.leading + insets.trailing,
                                  height: insets.top + insets.bottom)
        self.insets = insets
        self.frame = CGRect(origin: CGPoint(x: insets.leading, y: insets.top),
                            size: size)
    }
    public static let zero = SafeArea(size: .zero, insets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
    public static let one = SafeArea(size: .one, insets: EdgeInsets(top: 1.0, leading: 1.0, bottom: 1.0, trailing: 1.0))
}
