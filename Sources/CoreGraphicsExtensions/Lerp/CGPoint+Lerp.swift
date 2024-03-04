//
//  File.swift
//  
//
//  Created by Heestand, Anton Norman | Anton | GSSD on 2024-03-04.
//

import CoreGraphics

extension CGPoint {
    
    public static func lerp(at fraction: CGFloat, from leading: CGPoint, to trailing: CGPoint) -> CGPoint {
        leading * (1.0 - fraction) + trailing * fraction
    }
}
