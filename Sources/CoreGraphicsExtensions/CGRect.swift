import CoreGraphics
import Spatial

extension CGRect {
    public var in3D: Rect3D {
        Rect3D(origin: origin.in3D, size: size.in3D)
    }
}

extension CGRect {
    
    public static let one = CGRect(origin: .zero, size: .one)
}

extension CGRect {
    
    public init(center: CGPoint, size: CGSize) {
        self.init(origin: center - size / 2, size: size)
    }
    
    public init(minX: CGFloat, minY: CGFloat, maxX: CGFloat, maxY: CGFloat) {
        self.init(x: minX, y: minY, width: maxX - minX, height: maxY - minY)
    }
}

extension CGRect: @retroactive Hashable {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(minX)
        hasher.combine(minY)
        hasher.combine(width)
        hasher.combine(height)
    }
}

public extension CGRect {

    var center: CGPoint {
        get { origin + size / 2 }
        set { origin = newValue - size / 2 }
    }
}

public extension CGRect {
    
    mutating func combine(_ frame: CGRect) {
        self = combined(frame)
    }

    func combined(_ frame: CGRect) -> CGRect {
        CGRect(x: min(minX, frame.minX),
               y: min(minY, frame.minY),
               width: max(maxX, frame.maxX) - min(minX, frame.minX),
               height: max(maxY, frame.maxY) - min(minY, frame.minY))
    }
}

public extension CGRect? {
    
    mutating func combine(_ frame: CGRect) {
        self = combined(frame)
    }

    func combined(_ frame: CGRect) -> CGRect {
        guard let self else { return frame }
        return self.combined(frame)
    }
}

public extension [CGRect] {
    
    var combined: CGRect? {
        if isEmpty { return nil }
        var combinedFrame: CGRect = first!
        for frame in dropFirst() {
            combinedFrame.combine(frame)
        }
        return combinedFrame
    }
}

public extension CGRect {
    
    mutating func pad(_ padding: CGFloat) {
        self = padded(padding)
    }
    
    func padded(_ padding: CGFloat) -> CGRect {
        CGRect(origin: origin - padding, size: size + padding * 2)
    }
}

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
