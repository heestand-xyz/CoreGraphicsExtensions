import CoreGraphics

public extension CGSize {
    
    static func + (lhs: CGSize, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.width + rhs.width, height: lhs.height + rhs.height)
    }
    static func - (lhs: CGSize, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.width - rhs.width, height: lhs.height - rhs.height)
    }
    static func * (lhs: CGSize, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.width * rhs.width, height: lhs.height * rhs.height)
    }
    static func / (lhs: CGSize, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.width / rhs.width, height: lhs.height / rhs.height)
    }
    
    static func += (lhs: CGSize, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.width + rhs.width, height: lhs.height + rhs.height)
    }
    static func -= (lhs: CGSize, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.width - rhs.width, height: lhs.height - rhs.height)
    }
    static func *= (lhs: CGSize, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.width * rhs.width, height: lhs.height * rhs.height)
    }
    static func /= (lhs: CGSize, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.width / rhs.width, height: lhs.height / rhs.height)
    }
    
}

// CGPoint
public extension CGSize {
    
    static func + (lhs: CGSize, rhs: CGPoint) -> CGSize {
        CGSize(width: lhs.width + rhs.x, height: lhs.height + rhs.y)
    }
    static func - (lhs: CGSize, rhs: CGPoint) -> CGSize {
        CGSize(width: lhs.width - rhs.x, height: lhs.height - rhs.y)
    }
    static func * (lhs: CGSize, rhs: CGPoint) -> CGSize {
        CGSize(width: lhs.width * rhs.x, height: lhs.height * rhs.y)
    }
    static func / (lhs: CGSize, rhs: CGPoint) -> CGSize {
        CGSize(width: lhs.width / rhs.x, height: lhs.height / rhs.y)
    }
    
    static func + (lhs: CGPoint, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.x + rhs.width, height: lhs.y + rhs.height)
    }
    static func - (lhs: CGPoint, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.x - rhs.width, height: lhs.y - rhs.height)
    }
    static func * (lhs: CGPoint, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.x * rhs.width, height: lhs.y * rhs.height)
    }
    static func / (lhs: CGPoint, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.x / rhs.width, height: lhs.y / rhs.height)
    }
    
    static func += (lhs: CGSize, rhs: CGPoint) -> CGSize {
        CGSize(width: lhs.width + rhs.x, height: lhs.height + rhs.y)
    }
    static func -= (lhs: CGSize, rhs: CGPoint) -> CGSize {
        CGSize(width: lhs.width - rhs.x, height: lhs.height - rhs.y)
    }
    static func *= (lhs: CGSize, rhs: CGPoint) -> CGSize {
        CGSize(width: lhs.width * rhs.x, height: lhs.height * rhs.y)
    }
    static func /= (lhs: CGSize, rhs: CGPoint) -> CGSize {
        CGSize(width: lhs.width / rhs.x, height: lhs.height / rhs.y)
    }
    
}

// CGVector
public extension CGSize {
    
    static func + (lhs: CGSize, rhs: CGVector) -> CGSize {
        CGSize(width: lhs.width + rhs.dx, height: lhs.height + rhs.dy)
    }
    static func - (lhs: CGSize, rhs: CGVector) -> CGSize {
        CGSize(width: lhs.width - rhs.dx, height: lhs.height - rhs.dy)
    }
    static func * (lhs: CGSize, rhs: CGVector) -> CGSize {
        CGSize(width: lhs.width * rhs.dx, height: lhs.height * rhs.dy)
    }
    static func / (lhs: CGSize, rhs: CGVector) -> CGSize {
        CGSize(width: lhs.width / rhs.dx, height: lhs.height / rhs.dy)
    }
    
    static func + (lhs: CGVector, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.dx + rhs.width, height: lhs.dy + rhs.height)
    }
    static func - (lhs: CGVector, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.dx - rhs.width, height: lhs.dy - rhs.height)
    }
    static func * (lhs: CGVector, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.dx * rhs.width, height: lhs.dy * rhs.height)
    }
    static func / (lhs: CGVector, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.dx / rhs.width, height: lhs.dy / rhs.height)
    }
    
    static func += (lhs: CGSize, rhs: CGVector) -> CGSize {
        CGSize(width: lhs.width + rhs.dx, height: lhs.height + rhs.dy)
    }
    static func -= (lhs: CGSize, rhs: CGVector) -> CGSize {
        CGSize(width: lhs.width - rhs.dx, height: lhs.height - rhs.dy)
    }
    static func *= (lhs: CGSize, rhs: CGVector) -> CGSize {
        CGSize(width: lhs.width * rhs.dx, height: lhs.height * rhs.dy)
    }
    static func /= (lhs: CGSize, rhs: CGVector) -> CGSize {
        CGSize(width: lhs.width / rhs.dx, height: lhs.height / rhs.dy)
    }
    
}
