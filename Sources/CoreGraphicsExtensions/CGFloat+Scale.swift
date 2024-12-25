//
//  Created by Anton Heestand on 2022-04-05.
//

import CoreGraphics
#if canImport(AppKit)
import AppKit
#elseif canImport(UIKit)
import UIKit
#endif
#if canImport(WatchKit)
import WatchKit
#endif

public extension CGFloat {
   
    @MainActor
    static var pointsPerPixel: CGFloat {
        1.0 / pixelsPerPoint
    }
    
    @MainActor
    static let pixelsPerPoint: CGFloat = {
#if os(macOS)
        NSScreen.main?.backingScaleFactor ?? 1.0
#elseif os(watchOS)
        WKInterfaceDevice.current().screenScale
#elseif os(visionOS)
        /// This number is a best guess at an average
        3.0
#else
        UIScreen.main.scale
#endif
    }()
}

