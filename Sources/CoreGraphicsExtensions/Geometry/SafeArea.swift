//
//  SafeArea.swift
//  CoreGraphicsExtensions
//
//  Created by Anton Heestand on 2025-08-26.
//

import CoreGraphics
import SwiftUI

public struct SafeArea: Equatable, Sendable {
    /// Size inside safe area
    public let insetSize: CGSize
    /// Size outside safe area
    public let fullSize: CGSize
    @available(*, deprecated, renamed: "fullSize")
    public var size: CGSize {
        fullSize
    }
    /// Frame within safe area
    public let frame: CGRect
    /// Safe area insets
    public let insets: EdgeInsets
    public init(geometry: GeometryProxy) {
        self.init(
            insetSize: geometry.size,
            insets: geometry.safeAreaInsets
        )
    }
    public init(insetSize: CGSize, insets: EdgeInsets) {
        self.insetSize = insetSize
        fullSize = insetSize + CGSize(width: insets.leading + insets.trailing,
                                  height: insets.top + insets.bottom)
        self.insets = insets
        self.frame = CGRect(origin: CGPoint(x: insets.leading, y: insets.top),
                            size: insetSize)
    }
    public static let zero = SafeArea(
        insetSize: .zero,
        insets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)
    )
    public static let one = SafeArea(
        insetSize: .one,
        insets: EdgeInsets(top: 1.0, leading: 1.0, bottom: 1.0, trailing: 1.0)
    )
}
