import CoreGraphics

public extension CGRect {
    
    static func + (lhs: CGRect, rhs: CGRect) -> CGRect {
        CGRect(x: lhs.minX + rhs.minX, y: lhs.minY + rhs.minY, width: lhs.width + rhs.width, height: lhs.height + rhs.height)
    }
    static func - (lhs: CGRect, rhs: CGRect) -> CGRect {
        CGRect(x: lhs.minX - rhs.minX, y: lhs.minY - rhs.minY, width: lhs.width - rhs.width, height: lhs.height - rhs.height)
    }
    static func * (lhs: CGRect, rhs: CGRect) -> CGRect {
        CGRect(x: lhs.minX * rhs.minX, y: lhs.minY * rhs.minY, width: lhs.width * rhs.width, height: lhs.height * rhs.height)
    }
    static func / (lhs: CGRect, rhs: CGRect) -> CGRect {
        CGRect(x: lhs.minX / rhs.minX, y: lhs.minY / rhs.minY, width: lhs.width / rhs.width, height: lhs.height / rhs.height)
    }
    
    static func += (lhs: inout CGRect, rhs: CGRect) {
        lhs = CGRect(x: lhs.minX + rhs.minX, y: lhs.minY + rhs.minY, width: lhs.width + rhs.width, height: lhs.height + rhs.height)
    }
    static func -= (lhs: inout CGRect, rhs: CGRect) {
        lhs = CGRect(x: lhs.minX - rhs.minX, y: lhs.minY - rhs.minY, width: lhs.width - rhs.width, height: lhs.height - rhs.height)
    }
    static func *= (lhs: inout CGRect, rhs: CGRect) {
        lhs = CGRect(x: lhs.minX * rhs.minX, y: lhs.minY * rhs.minY, width: lhs.width * rhs.width, height: lhs.height * rhs.height)
    }
    static func /= (lhs: inout CGRect, rhs: CGRect) {
        lhs = CGRect(x: lhs.minX / rhs.minX, y: lhs.minY / rhs.minY, width: lhs.width / rhs.width, height: lhs.height / rhs.height)
    }
    
}

// CGPoint
public extension CGRect {
    
    static func + (lhs: CGRect, rhs: CGPoint) -> CGRect {
        CGRect(x: lhs.minX + rhs.x, y: lhs.minY + rhs.y, width: lhs.width, height: lhs.height)
    }
    static func - (lhs: CGRect, rhs: CGPoint) -> CGRect {
        CGRect(x: lhs.minX - rhs.x, y: lhs.minY - rhs.y, width: lhs.width, height: lhs.height)
    }
    static func * (lhs: CGRect, rhs: CGPoint) -> CGRect {
        CGRect(x: lhs.minX * rhs.x, y: lhs.minY * rhs.y, width: lhs.width, height: lhs.height)
    }
    static func / (lhs: CGRect, rhs: CGPoint) -> CGRect {
        CGRect(x: lhs.minX / rhs.x, y: lhs.minY / rhs.y, width: lhs.width, height: lhs.height)
    }
    
    static func + (lhs: CGPoint, rhs: CGRect) -> CGRect {
        CGRect(x: lhs.x + rhs.minX, y: lhs.y + rhs.minY, width: rhs.width, height: rhs.height)
    }
    static func - (lhs: CGPoint, rhs: CGRect) -> CGRect {
        CGRect(x: lhs.x - rhs.minX, y: lhs.y - rhs.minY, width: rhs.width, height: rhs.height)
    }
    static func * (lhs: CGPoint, rhs: CGRect) -> CGRect {
        CGRect(x: lhs.x * rhs.minX, y: lhs.y * rhs.minY, width: rhs.width, height: rhs.height)
    }
    static func / (lhs: CGPoint, rhs: CGRect) -> CGRect {
        CGRect(x: lhs.x / rhs.minX, y: lhs.y / rhs.minY, width: rhs.width, height: rhs.height)
    }
    
    static func += (lhs: inout CGRect, rhs: CGPoint) {
        lhs = CGRect(x: lhs.minX + rhs.x, y: lhs.minY + rhs.y, width: lhs.width, height: lhs.height)
    }
    static func -= (lhs: inout CGRect, rhs: CGPoint) {
        lhs = CGRect(x: lhs.minX - rhs.x, y: lhs.minY - rhs.y, width: lhs.width, height: lhs.height)
    }
    static func *= (lhs: inout CGRect, rhs: CGPoint) {
        lhs = CGRect(x: lhs.minX * rhs.x, y: lhs.minY * rhs.y, width: lhs.width, height: lhs.height)
    }
    static func /= (lhs: inout CGRect, rhs: CGPoint) {
        lhs = CGRect(x: lhs.minX / rhs.x, y: lhs.minY / rhs.y, width: lhs.width, height: lhs.height)
    }
    
}

// CGVector
public extension CGRect {
    
    static func + (lhs: CGRect, rhs: CGVector) -> CGRect {
        CGRect(x: lhs.minX + rhs.dx, y: lhs.minY + rhs.dy, width: lhs.width, height: lhs.height)
    }
    static func - (lhs: CGRect, rhs: CGVector) -> CGRect {
        CGRect(x: lhs.minX - rhs.dx, y: lhs.minY - rhs.dy, width: lhs.width, height: lhs.height)
    }
    static func * (lhs: CGRect, rhs: CGVector) -> CGRect {
        CGRect(x: lhs.minX * rhs.dx, y: lhs.minY * rhs.dy, width: lhs.width, height: lhs.height)
    }
    static func / (lhs: CGRect, rhs: CGVector) -> CGRect {
        CGRect(x: lhs.minX / rhs.dx, y: lhs.minY / rhs.dy, width: lhs.width, height: lhs.height)
    }
    
    static func + (lhs: CGVector, rhs: CGRect) -> CGRect {
        CGRect(x: lhs.dx + rhs.minX, y: lhs.dy + rhs.minY, width: rhs.width, height: rhs.height)
    }
    static func - (lhs: CGVector, rhs: CGRect) -> CGRect {
        CGRect(x: lhs.dx - rhs.minX, y: lhs.dy - rhs.minY, width: rhs.width, height: rhs.height)
    }
    static func * (lhs: CGVector, rhs: CGRect) -> CGRect {
        CGRect(x: lhs.dx * rhs.minX, y: lhs.dy * rhs.minY, width: rhs.width, height: rhs.height)
    }
    static func / (lhs: CGVector, rhs: CGRect) -> CGRect {
        CGRect(x: lhs.dx / rhs.minX, y: lhs.dy / rhs.minY, width: rhs.width, height: rhs.height)
    }
    
    static func += (lhs: inout CGRect, rhs: CGVector) {
        lhs = CGRect(x: lhs.minX + rhs.dx, y: lhs.minY + rhs.dy, width: lhs.width, height: lhs.height)
    }
    static func -= (lhs: inout CGRect, rhs: CGVector) {
        lhs = CGRect(x: lhs.minX - rhs.dx, y: lhs.minY - rhs.dy, width: lhs.width, height: lhs.height)
    }
    static func *= (lhs: inout CGRect, rhs: CGVector) {
        lhs = CGRect(x: lhs.minX * rhs.dx, y: lhs.minY * rhs.dy, width: lhs.width, height: lhs.height)
    }
    static func /= (lhs: inout CGRect, rhs: CGVector) {
        lhs = CGRect(x: lhs.minX / rhs.dx, y: lhs.minY / rhs.dy, width: lhs.width, height: lhs.height)
    }
    
}

// CGSize
public extension CGRect {
    
    static func + (lhs: CGRect, rhs: CGSize) -> CGRect {
        CGRect(x: lhs.minX, y: lhs.minY, width: lhs.width + rhs.width, height: lhs.height + rhs.height)
    }
    static func - (lhs: CGRect, rhs: CGSize) -> CGRect {
        CGRect(x: lhs.minX, y: lhs.minY, width: lhs.width - rhs.width, height: lhs.height - rhs.height)
    }
    static func * (lhs: CGRect, rhs: CGSize) -> CGRect {
        CGRect(x: lhs.minX, y: lhs.minY, width: lhs.width * rhs.width, height: lhs.height * rhs.height)
    }
    static func / (lhs: CGRect, rhs: CGSize) -> CGRect {
        CGRect(x: lhs.minX, y: lhs.minY, width: lhs.width / rhs.width, height: lhs.height / rhs.height)
    }
    
    static func + (lhs: CGSize, rhs: CGRect) -> CGRect {
        CGRect(x: rhs.minX, y: rhs.minY, width: lhs.width + rhs.width, height: lhs.height + rhs.height)
    }
    static func - (lhs: CGSize, rhs: CGRect) -> CGRect {
        CGRect(x: rhs.minX, y: rhs.minY, width: lhs.width - rhs.width, height: lhs.height - rhs.height)
    }
    static func * (lhs: CGSize, rhs: CGRect) -> CGRect {
        CGRect(x: rhs.minX, y: rhs.minY, width: lhs.width * rhs.width, height: lhs.height * rhs.height)
    }
    static func / (lhs: CGSize, rhs: CGRect) -> CGRect {
        CGRect(x: rhs.minX, y: rhs.minY, width: lhs.width / rhs.width, height: lhs.height / rhs.height)
    }
    
    static func += (lhs: inout CGRect, rhs: CGSize) {
        lhs = CGRect(x: lhs.minX, y: lhs.minY, width: lhs.width + rhs.width, height: lhs.height + rhs.height)
    }
    static func -= (lhs: inout CGRect, rhs: CGSize) {
        lhs = CGRect(x: lhs.minX, y: lhs.minY, width: lhs.width - rhs.width, height: lhs.height - rhs.height)
    }
    static func *= (lhs: inout CGRect, rhs: CGSize) {
        lhs = CGRect(x: lhs.minX, y: lhs.minY, width: lhs.width * rhs.width, height: lhs.height * rhs.height)
    }
    static func /= (lhs: inout CGRect, rhs: CGSize) {
        lhs = CGRect(x: lhs.minX, y: lhs.minY, width: lhs.width / rhs.width, height: lhs.height / rhs.height)
    }
    
}
