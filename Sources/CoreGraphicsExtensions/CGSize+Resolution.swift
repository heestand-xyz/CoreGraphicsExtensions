//
//  Created by Anton Heestand on 2022-04-03.
//

import CoreGraphics

public extension CGSize {
    
    var aspectRatio: CGFloat {
        width / height
    }
    
    var count: Int {
        Int(width) * Int(height)
    }
}

