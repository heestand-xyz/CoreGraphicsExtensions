import CoreGraphics
import SwiftUI

@available(iOS 13, *)
@available(tvOS 13, *)
@available(macOS 10.15, *)
@available(watchOS 6.0, *)
public extension Binding where Value == CGFloat {
    func asDouble() -> Binding<Double> {
        Binding<Double> {
            Double(wrappedValue)
        } set: { value in
            wrappedValue = CGFloat(value)
        }
    }
}

@available(iOS 13, *)
@available(tvOS 13, *)
@available(macOS 10.15, *)
@available(watchOS 6.0, *)
public extension Binding where Value == Double {
    func asCGFloat() -> Binding<CGFloat> {
        Binding<CGFloat> {
            CGFloat(wrappedValue)
        } set: { value in
            wrappedValue = Double(value)
        }
    }
}
