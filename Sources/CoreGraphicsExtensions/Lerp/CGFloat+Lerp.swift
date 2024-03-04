//
//  File.swift
//  
//
//  Created by Heestand, Anton Norman | Anton | GSSD on 2024-03-04.
//

import CoreGraphics

extension CGFloat {
    
    public static func lerp(at fraction: CGFloat, from leading: CGFloat, to trailing: CGFloat) -> CGFloat {
        leading * (1.0 - fraction) + trailing * fraction
    }
}
