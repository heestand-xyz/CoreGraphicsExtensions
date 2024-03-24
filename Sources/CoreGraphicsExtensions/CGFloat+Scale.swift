//
//  Created by Anton Heestand on 2022-04-05.
//

import CoreGraphics
#if os(macOS)
import AppKit
#else
import UIKit
#endif

public extension CGFloat {
   
    @available(*, deprecated, renamed: "pixelsPerPoint")
    static var scale: CGFloat {
        pixelsPerPoint
    }
    
    static var pointsPerPixel: CGFloat {
        1.0 / pixelsPerPoint
    }
    
    static var pixelsPerPoint: CGFloat {
        #if os(macOS)
        return NSScreen.main?.backingScaleFactor ?? 1.0
        #elseif os(visionOS)
        /// This number is a best guess at an average
        return 3.0
        #else
        return UIScreen.main.scale
        #endif
    }
}

