import CoreGraphics
import Spatial

extension CGVector {
    public var in3D: Vector3D {
        Vector3D(x: dx, y: dy, z: 0.0)
    }
}

extension CGVector: @retroactive Hashable {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(dx)
        hasher.combine(dy)
    }
}

public extension CGVector {
    
    @available(*, deprecated, renamed: "asPoint")
    var point: CGPoint { asPoint }
    var asPoint: CGPoint { CGPoint(x: dx, y: dy) }
    
    @available(*, deprecated, renamed: "asSize")
    var size: CGSize { asSize }
    var asSize: CGSize { CGSize(width: dx, height: dy) }
    
}

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
    
    static func += (lhs: inout CGVector, rhs: CGVector) {
        lhs = CGVector(dx: lhs.dx + rhs.dx, dy: lhs.dy + rhs.dy)
    }
    static func -= (lhs: inout CGVector, rhs: CGVector) {
        lhs = CGVector(dx: lhs.dx - rhs.dx, dy: lhs.dy - rhs.dy)
    }
    static func *= (lhs: inout CGVector, rhs: CGVector) {
        lhs = CGVector(dx: lhs.dx * rhs.dx, dy: lhs.dy * rhs.dy)
    }
    static func /= (lhs: inout CGVector, rhs: CGVector) {
        lhs = CGVector(dx: lhs.dx / rhs.dx, dy: lhs.dy / rhs.dy)
    }
    
    static prefix func - (value: CGVector) -> CGVector {
        CGVector(dx: -value.dx, dy: -value.dy)
    }
    
}

// CGFloat
public extension CGVector {
    
    static func + (lhs: CGVector, rhs: CGFloat) -> CGVector {
        CGVector(dx: lhs.dx + rhs, dy: lhs.dy + rhs)
    }
    static func - (lhs: CGVector, rhs: CGFloat) -> CGVector {
        CGVector(dx: lhs.dx - rhs, dy: lhs.dy - rhs)
    }
    static func * (lhs: CGVector, rhs: CGFloat) -> CGVector {
        CGVector(dx: lhs.dx * rhs, dy: lhs.dy * rhs)
    }
    static func / (lhs: CGVector, rhs: CGFloat) -> CGVector {
        CGVector(dx: lhs.dx / rhs, dy: lhs.dy / rhs)
    }
    
    static func + (lhs: CGFloat, rhs: CGVector) -> CGVector {
        CGVector(dx: lhs + rhs.dx, dy: lhs + rhs.dy)
    }
    static func - (lhs: CGFloat, rhs: CGVector) -> CGVector {
        CGVector(dx: lhs - rhs.dx, dy: lhs - rhs.dy)
    }
    static func * (lhs: CGFloat, rhs: CGVector) -> CGVector {
        CGVector(dx: lhs * rhs.dx, dy: lhs * rhs.dy)
    }
    static func / (lhs: CGFloat, rhs: CGVector) -> CGVector {
        CGVector(dx: lhs / rhs.dx, dy: lhs / rhs.dy)
    }
    
    static func += (lhs: inout CGVector, rhs: CGFloat) {
        lhs = CGVector(dx: lhs.dx + rhs, dy: lhs.dy + rhs)
    }
    static func -= (lhs: inout CGVector, rhs: CGFloat) {
        lhs = CGVector(dx: lhs.dx - rhs, dy: lhs.dy - rhs)
    }
    static func *= (lhs: inout CGVector, rhs: CGFloat) {
        lhs = CGVector(dx: lhs.dx * rhs, dy: lhs.dy * rhs)
    }
    static func /= (lhs: inout CGVector, rhs: CGFloat) {
        lhs = CGVector(dx: lhs.dx / rhs, dy: lhs.dy / rhs)
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
    
    static func += (lhs: inout CGVector, rhs: CGPoint) {
        lhs = CGVector(dx: lhs.dx + rhs.x, dy: lhs.dy + rhs.y)
    }
    static func -= (lhs: inout CGVector, rhs: CGPoint) {
        lhs = CGVector(dx: lhs.dx - rhs.x, dy: lhs.dy - rhs.y)
    }
    static func *= (lhs: inout CGVector, rhs: CGPoint) {
        lhs = CGVector(dx: lhs.dx * rhs.x, dy: lhs.dy * rhs.y)
    }
    static func /= (lhs: inout CGVector, rhs: CGPoint) {
        lhs = CGVector(dx: lhs.dx / rhs.x, dy: lhs.dy / rhs.y)
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
    
    static func += (lhs: inout CGVector, rhs: CGSize) {
        lhs = CGVector(dx: lhs.dx + rhs.width, dy: lhs.dy + rhs.height)
    }
    static func -= (lhs: inout CGVector, rhs: CGSize) {
        lhs = CGVector(dx: lhs.dx - rhs.width, dy: lhs.dy - rhs.height)
    }
    static func *= (lhs: inout CGVector, rhs: CGSize) {
        lhs = CGVector(dx: lhs.dx * rhs.width, dy: lhs.dy * rhs.height)
    }
    static func /= (lhs: inout CGVector, rhs: CGSize) {
        lhs = CGVector(dx: lhs.dx / rhs.width, dy: lhs.dy / rhs.height)
    }
    
}
