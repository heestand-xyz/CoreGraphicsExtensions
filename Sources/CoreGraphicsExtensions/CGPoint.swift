import CoreGraphics

public extension CGPoint {
    
    var vector: CGVector { CGVector(dx: x, dy: y) }
    
    var size: CGSize { CGSize(width: x, height: y) }
    
}

public extension CGPoint {
    
    static func + (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
    }
    static func - (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
    }
    static func * (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs.x * rhs.x, y: lhs.y * rhs.y)
    }
    static func / (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs.x / rhs.x, y: lhs.y / rhs.y)
    }
    
    static func += (lhs: inout CGPoint, rhs: CGPoint) {
        lhs = CGPoint(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
    }
    static func -= (lhs: inout CGPoint, rhs: CGPoint) {
        lhs = CGPoint(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
    }
    static func *= (lhs: inout CGPoint, rhs: CGPoint) {
        lhs = CGPoint(x: lhs.x * rhs.x, y: lhs.y * rhs.y)
    }
    static func /= (lhs: inout CGPoint, rhs: CGPoint) {
        lhs = CGPoint(x: lhs.x / rhs.x, y: lhs.y / rhs.y)
    }
    
}

// CGFloat
public extension CGPoint {
    
    static func + (lhs: CGPoint, rhs: CGFloat) -> CGPoint {
        CGPoint(x: lhs.x + rhs, y: lhs.y + rhs)
    }
    static func - (lhs: CGPoint, rhs: CGFloat) -> CGPoint {
        CGPoint(x: lhs.x - rhs, y: lhs.y - rhs)
    }
    static func * (lhs: CGPoint, rhs: CGFloat) -> CGPoint {
        CGPoint(x: lhs.x * rhs, y: lhs.y * rhs)
    }
    static func / (lhs: CGPoint, rhs: CGFloat) -> CGPoint {
        CGPoint(x: lhs.x / rhs, y: lhs.y / rhs)
    }
    
    static func + (lhs: CGFloat, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs + rhs.x, y: lhs + rhs.y)
    }
    static func - (lhs: CGFloat, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs - rhs.x, y: lhs - rhs.y)
    }
    static func * (lhs: CGFloat, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs * rhs.x, y: lhs * rhs.y)
    }
    static func / (lhs: CGFloat, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs / rhs.x, y: lhs / rhs.y)
    }
    
    static func += (lhs: inout CGPoint, rhs: CGFloat) {
        lhs = CGPoint(x: lhs.x + rhs, y: lhs.y + rhs)
    }
    static func -= (lhs: inout CGPoint, rhs: CGFloat) {
        lhs = CGPoint(x: lhs.x - rhs, y: lhs.y - rhs)
    }
    static func *= (lhs: inout CGPoint, rhs: CGFloat) {
        lhs = CGPoint(x: lhs.x * rhs, y: lhs.y * rhs)
    }
    static func /= (lhs: inout CGPoint, rhs: CGFloat) {
        lhs = CGPoint(x: lhs.x / rhs, y: lhs.y / rhs)
    }
    
}

// CGVector
public extension CGPoint {
    
    static func + (lhs: CGPoint, rhs: CGVector) -> CGPoint {
        CGPoint(x: lhs.x + rhs.dx, y: lhs.y + rhs.dy)
    }
    static func - (lhs: CGPoint, rhs: CGVector) -> CGPoint {
        CGPoint(x: lhs.x - rhs.dx, y: lhs.y - rhs.dy)
    }
    static func * (lhs: CGPoint, rhs: CGVector) -> CGPoint {
        CGPoint(x: lhs.x * rhs.dx, y: lhs.y * rhs.dy)
    }
    static func / (lhs: CGPoint, rhs: CGVector) -> CGPoint {
        CGPoint(x: lhs.x / rhs.dx, y: lhs.y / rhs.dy)
    }
    
    static func + (lhs: CGVector, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs.dx + rhs.x, y: lhs.dy + rhs.y)
    }
    static func - (lhs: CGVector, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs.dx - rhs.x, y: lhs.dy - rhs.y)
    }
    static func * (lhs: CGVector, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs.dx * rhs.x, y: lhs.dy * rhs.y)
    }
    static func / (lhs: CGVector, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs.dx / rhs.x, y: lhs.dy / rhs.y)
    }
    
    static func += (lhs: inout CGPoint, rhs: CGVector) {
        lhs = CGPoint(x: lhs.x + rhs.dx, y: lhs.y + rhs.dy)
    }
    static func -= (lhs: inout CGPoint, rhs: CGVector) {
        lhs = CGPoint(x: lhs.x - rhs.dx, y: lhs.y - rhs.dy)
    }
    static func *= (lhs: inout CGPoint, rhs: CGVector) {
        lhs = CGPoint(x: lhs.x * rhs.dx, y: lhs.y * rhs.dy)
    }
    static func /= (lhs: inout CGPoint, rhs: CGVector) {
        lhs = CGPoint(x: lhs.x / rhs.dx, y: lhs.y / rhs.dy)
    }
    
}

// CGSize
public extension CGPoint {
    
    static func + (lhs: CGPoint, rhs: CGSize) -> CGPoint {
        CGPoint(x: lhs.x + rhs.width, y: lhs.y + rhs.height)
    }
    static func - (lhs: CGPoint, rhs: CGSize) -> CGPoint {
        CGPoint(x: lhs.x - rhs.width, y: lhs.y - rhs.height)
    }
    static func * (lhs: CGPoint, rhs: CGSize) -> CGPoint {
        CGPoint(x: lhs.x * rhs.width, y: lhs.y * rhs.height)
    }
    static func / (lhs: CGPoint, rhs: CGSize) -> CGPoint {
        CGPoint(x: lhs.x / rhs.width, y: lhs.y / rhs.height)
    }
    
    static func + (lhs: CGSize, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs.width + rhs.x, y: lhs.height + rhs.y)
    }
    static func - (lhs: CGSize, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs.width - rhs.x, y: lhs.height - rhs.y)
    }
    static func * (lhs: CGSize, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs.width * rhs.x, y: lhs.height * rhs.y)
    }
    static func / (lhs: CGSize, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs.width / rhs.x, y: lhs.height / rhs.y)
    }
    
    static func += (lhs: inout CGPoint, rhs: CGSize) {
        lhs = CGPoint(x: lhs.x + rhs.width, y: lhs.y + rhs.height)
    }
    static func -= (lhs: inout CGPoint, rhs: CGSize) {
        lhs = CGPoint(x: lhs.x - rhs.width, y: lhs.y - rhs.height)
    }
    static func *= (lhs: inout CGPoint, rhs: CGSize) {
        lhs = CGPoint(x: lhs.x * rhs.width, y: lhs.y * rhs.height)
    }
    static func /= (lhs: inout CGPoint, rhs: CGSize) {
        lhs = CGPoint(x: lhs.x / rhs.width, y: lhs.y / rhs.height)
    }
    
}
