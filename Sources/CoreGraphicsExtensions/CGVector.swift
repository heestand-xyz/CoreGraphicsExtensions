import CoreGraphics

public extension CGVector {
    
    static func + (lhs: CGVector, rhs: CGVector) -> CGVector {
        CGVector(dx: lhs.dx + rhs.dx, dy: lhs.dy + rhs.dy)
    }
    static func - (lhs: CGVector, rhs: CGVector) -> CGVector {
        CGVector(dx: lhs.dx - rhs.dx, dy: lhs.dy - rhs.dy)
    }
    static func * (lhs: CGVector, rhs: CGVector) -> CGVector {
        CGVector(dx: lhs.dx * rhs.dx, dy: lhs.dy * rhs.dy)
    }
    static func / (lhs: CGVector, rhs: CGVector) -> CGVector {
        CGVector(dx: lhs.dx / rhs.dx, dy: lhs.dy / rhs.dy)
    }
    
    static func += (lhs: CGVector, rhs: CGVector) -> CGVector {
        CGVector(dx: lhs.dx + rhs.dx, dy: lhs.dy + rhs.dy)
    }
    static func -= (lhs: CGVector, rhs: CGVector) -> CGVector {
        CGVector(dx: lhs.dx - rhs.dx, dy: lhs.dy - rhs.dy)
    }
    static func *= (lhs: CGVector, rhs: CGVector) -> CGVector {
        CGVector(dx: lhs.dx * rhs.dx, dy: lhs.dy * rhs.dy)
    }
    static func /= (lhs: CGVector, rhs: CGVector) -> CGVector {
        CGVector(dx: lhs.dx / rhs.dx, dy: lhs.dy / rhs.dy)
    }
    
}

// CGPoint
public extension CGVector {
    
    static func + (lhs: CGVector, rhs: CGPoint) -> CGVector {
        CGVector(dx: lhs.dx + rhs.x, dy: lhs.dy + rhs.y)
    }
    static func - (lhs: CGVector, rhs: CGPoint) -> CGVector {
        CGVector(dx: lhs.dx - rhs.x, dy: lhs.dy - rhs.y)
    }
    static func * (lhs: CGVector, rhs: CGPoint) -> CGVector {
        CGVector(dx: lhs.dx * rhs.x, dy: lhs.dy * rhs.y)
    }
    static func / (lhs: CGVector, rhs: CGPoint) -> CGVector {
        CGVector(dx: lhs.dx / rhs.x, dy: lhs.dy / rhs.y)
    }
    
    static func + (lhs: CGPoint, rhs: CGVector) -> CGVector {
        CGVector(dx: lhs.x + rhs.dx, dy: lhs.y + rhs.dy)
    }
    static func - (lhs: CGPoint, rhs: CGVector) -> CGVector {
        CGVector(dx: lhs.x - rhs.dx, dy: lhs.y - rhs.dy)
    }
    static func * (lhs: CGPoint, rhs: CGVector) -> CGVector {
        CGVector(dx: lhs.x * rhs.dx, dy: lhs.y * rhs.dy)
    }
    static func / (lhs: CGPoint, rhs: CGVector) -> CGVector {
        CGVector(dx: lhs.x / rhs.dx, dy: lhs.y / rhs.dy)
    }
    
    static func += (lhs: CGVector, rhs: CGPoint) -> CGVector {
        CGVector(dx: lhs.dx + rhs.x, dy: lhs.dy + rhs.y)
    }
    static func -= (lhs: CGVector, rhs: CGPoint) -> CGVector {
        CGVector(dx: lhs.dx - rhs.x, dy: lhs.dy - rhs.y)
    }
    static func *= (lhs: CGVector, rhs: CGPoint) -> CGVector {
        CGVector(dx: lhs.dx * rhs.x, dy: lhs.dy * rhs.y)
    }
    static func /= (lhs: CGVector, rhs: CGPoint) -> CGVector {
        CGVector(dx: lhs.dx / rhs.x, dy: lhs.dy / rhs.y)
    }
    
}

// CGSize
public extension CGVector {
    
    static func + (lhs: CGVector, rhs: CGSize) -> CGVector {
        CGVector(dx: lhs.dx + rhs.width, dy: lhs.dy + rhs.height)
    }
    static func - (lhs: CGVector, rhs: CGSize) -> CGVector {
        CGVector(dx: lhs.dx - rhs.width, dy: lhs.dy - rhs.height)
    }
    static func * (lhs: CGVector, rhs: CGSize) -> CGVector {
        CGVector(dx: lhs.dx * rhs.width, dy: lhs.dy * rhs.height)
    }
    static func / (lhs: CGVector, rhs: CGSize) -> CGVector {
        CGVector(dx: lhs.dx / rhs.width, dy: lhs.dy / rhs.height)
    }
    
    static func + (lhs: CGSize, rhs: CGVector) -> CGVector {
        CGVector(dx: lhs.width + rhs.dx, dy: lhs.height + rhs.dy)
    }
    static func - (lhs: CGSize, rhs: CGVector) -> CGVector {
        CGVector(dx: lhs.width - rhs.dx, dy: lhs.height - rhs.dy)
    }
    static func * (lhs: CGSize, rhs: CGVector) -> CGVector {
        CGVector(dx: lhs.width * rhs.dx, dy: lhs.height * rhs.dy)
    }
    static func / (lhs: CGSize, rhs: CGVector) -> CGVector {
        CGVector(dx: lhs.width / rhs.dx, dy: lhs.height / rhs.dy)
    }
    
    static func += (lhs: CGVector, rhs: CGSize) -> CGVector {
        CGVector(dx: lhs.dx + rhs.width, dy: lhs.dy + rhs.height)
    }
    static func -= (lhs: CGVector, rhs: CGSize) -> CGVector {
        CGVector(dx: lhs.dx - rhs.width, dy: lhs.dy - rhs.height)
    }
    static func *= (lhs: CGVector, rhs: CGSize) -> CGVector {
        CGVector(dx: lhs.dx * rhs.width, dy: lhs.dy * rhs.height)
    }
    static func /= (lhs: CGVector, rhs: CGSize) -> CGVector {
        CGVector(dx: lhs.dx / rhs.width, dy: lhs.dy / rhs.height)
    }
    
}
