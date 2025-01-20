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

public extension CGFloat {
   
    /// The estimation does not require MainActor access.
    static var estimatedPointsPerPixel: CGFloat {
        1.0 / estimatedPixelsPerPoint
    }
    
    /// The estimation does not require MainActor access.
    ///
    /// iOS, visionOS: 3 pixels per point
    ///
    /// macOS, watchOS, tvOS: 2 pixels per point
    ///
    /// Note that visionOS has dynamic pixels per points,
    /// so the estimation here is a best guess at an average.
    /// 
    /// The estimation is does not consider older devices.
    static let estimatedPixelsPerPoint: CGFloat = {
#if os(macOS)
        2.0
#elseif os(watchOS)
        2.0
#elseif os(visionOS)
        3.0
#elseif os(iOS)
        3.0
#elseif os(tvOS)
        2.0
#endif
    }()
}

