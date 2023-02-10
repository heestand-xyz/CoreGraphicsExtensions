import CoreGraphics

extension CGSize: Hashable {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(resolution)
    }
}

public extension CGSize {
    
    @available(*, deprecated, renamed: "asPoint")
    var point: CGPoint { asPoint }
    var asPoint: CGPoint { CGPoint(x: width, y: height) }
    
    @available(*, deprecated, renamed: "asVector")
    var vector: CGVector { asVector }
    var asVector: CGVector { CGVector(dx: width, dy: height) }
    
}

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
    
    static func += (lhs: inout CGSize, rhs: CGSize) {
        lhs = CGSize(width: lhs.width + rhs.width, height: lhs.height + rhs.height)
    }
    static func -= (lhs: inout CGSize, rhs: CGSize) {
        lhs = CGSize(width: lhs.width - rhs.width, height: lhs.height - rhs.height)
    }
    static func *= (lhs: inout CGSize, rhs: CGSize) {
        lhs = CGSize(width: lhs.width * rhs.width, height: lhs.height * rhs.height)
    }
    static func /= (lhs: inout CGSize, rhs: CGSize) {
        lhs = CGSize(width: lhs.width / rhs.width, height: lhs.height / rhs.height)
    }
    
    static prefix func - (value: CGSize) -> CGSize {
        CGSize(width: -value.width, height: -value.height)
    }
    
}

// CGFloat
public extension CGSize {
    
    static func + (lhs: CGSize, rhs: CGFloat) -> CGSize {
        CGSize(width: lhs.width + rhs, height: lhs.height + rhs)
    }
    static func - (lhs: CGSize, rhs: CGFloat) -> CGSize {
        CGSize(width: lhs.width - rhs, height: lhs.height - rhs)
    }
    static func * (lhs: CGSize, rhs: CGFloat) -> CGSize {
        CGSize(width: lhs.width * rhs, height: lhs.height * rhs)
    }
    static func / (lhs: CGSize, rhs: CGFloat) -> CGSize {
        CGSize(width: lhs.width / rhs, height: lhs.height / rhs)
    }
    
    static func + (lhs: CGFloat, rhs: CGSize) -> CGSize {
        CGSize(width: lhs + rhs.width, height: lhs + rhs.height)
    }
    static func - (lhs: CGFloat, rhs: CGSize) -> CGSize {
        CGSize(width: lhs - rhs.width, height: lhs - rhs.height)
    }
    static func * (lhs: CGFloat, rhs: CGSize) -> CGSize {
        CGSize(width: lhs * rhs.width, height: lhs * rhs.height)
    }
    static func / (lhs: CGFloat, rhs: CGSize) -> CGSize {
        CGSize(width: lhs / rhs.width, height: lhs / rhs.height)
    }
    
    static func += (lhs: inout CGSize, rhs: CGFloat) {
        lhs = CGSize(width: lhs.width + rhs, height: lhs.height + rhs)
    }
    static func -= (lhs: inout CGSize, rhs: CGFloat) {
        lhs = CGSize(width: lhs.width - rhs, height: lhs.height - rhs)
    }
    static func *= (lhs: inout CGSize, rhs: CGFloat) {
        lhs = CGSize(width: lhs.width * rhs, height: lhs.height * rhs)
    }
    static func /= (lhs: inout CGSize, rhs: CGFloat) {
        lhs = CGSize(width: lhs.width / rhs, height: lhs.height / rhs)
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
    
    static func += (lhs: inout CGSize, rhs: CGPoint) {
        lhs = CGSize(width: lhs.width + rhs.x, height: lhs.height + rhs.y)
    }
    static func -= (lhs: inout CGSize, rhs: CGPoint) {
        lhs = CGSize(width: lhs.width - rhs.x, height: lhs.height - rhs.y)
    }
    static func *= (lhs: inout CGSize, rhs: CGPoint) {
        lhs = CGSize(width: lhs.width * rhs.x, height: lhs.height * rhs.y)
    }
    static func /= (lhs: inout CGSize, rhs: CGPoint) {
        lhs = CGSize(width: lhs.width / rhs.x, height: lhs.height / rhs.y)
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
    
    static func += (lhs: inout CGSize, rhs: CGVector) {
        lhs = CGSize(width: lhs.width + rhs.dx, height: lhs.height + rhs.dy)
    }
    static func -= (lhs: inout CGSize, rhs: CGVector) {
        lhs = CGSize(width: lhs.width - rhs.dx, height: lhs.height - rhs.dy)
    }
    static func *= (lhs: inout CGSize, rhs: CGVector) {
        lhs = CGSize(width: lhs.width * rhs.dx, height: lhs.height * rhs.dy)
    }
    static func /= (lhs: inout CGSize, rhs: CGVector) {
        lhs = CGSize(width: lhs.width / rhs.dx, height: lhs.height / rhs.dy)
    }
    
}
