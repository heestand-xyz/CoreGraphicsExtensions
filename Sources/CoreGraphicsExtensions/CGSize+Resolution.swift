//
//  Created by Anton Heestand on 2022-04-03.
//

import CoreGraphics
#if os(macOS)
import AppKit
#else
import UIKit
#endif

public extension CGSize {
    
    var resolution: CGSize {
        #if os(macOS)
        let scale = NSScreen.main?.backingScaleFactor ?? 1.0
        #else
        let scale = UIScreen.main.scale
        #endif
        return self * scale
    }
    
    var aspectRatio: CGFloat {
        width / height
    }
}

