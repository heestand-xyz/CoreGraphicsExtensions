//
//  File.swift
//  
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
    
    static var scale: CGFloat {
        #if os(macOS)
        return NSScreen.main?.backingScaleFactor ?? 1.0
        #else
        return UIScreen.main.scale
        #endif
    }
}

