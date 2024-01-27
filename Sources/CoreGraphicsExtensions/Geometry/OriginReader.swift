//
//  OriginGeometry.swift
//
//
//  Created by Anton Heestand on 2022-07-31.
//

import SwiftUI

@available(iOS 14, macOS 11, *)
public struct OriginGeometry: View {
    
    @Binding var origin: CGPoint
    let coordinateSpace: CoordinateSpace
    
    public init(origin: Binding<CGPoint>, in coordinateSpace: CoordinateSpace) {
        _origin = origin
        self.coordinateSpace = coordinateSpace
    }
    
    public var body: some View {
        GeometryReader { geometry in
            Color.clear
                .onAppear {
                    origin = geometry.frame(in: coordinateSpace).origin
                }
                .onChange(of: geometry.frame(in: coordinateSpace).origin) { newOrigin in
                    origin = newOrigin
                }
        }
    }
}

@available(iOS 14, macOS 11, *)
extension View {
    
    @available(*, deprecated, renamed: "readGeometry(origin:in:)")
    public func geometry(origin: Binding<CGPoint>, in coordinateSpace: CoordinateSpace) -> some View {
        readGeometry(origin: origin, in: coordinateSpace)
    }
    
    public func readGeometry(x: Binding<CGFloat>, in coordinateSpace: CoordinateSpace) -> some View {
        readGeometry(origin: Binding<CGPoint>(get: {
            CGPoint(x: x.wrappedValue, y: 0.0)
        }, set: { newPoint in
            x.wrappedValue = newPoint.x
        }), in: coordinateSpace)
    }
    
    public func readGeometry(y: Binding<CGFloat>, in coordinateSpace: CoordinateSpace) -> some View {
        readGeometry(origin: Binding<CGPoint>(get: {
            CGPoint(x: 0.0, y: y.wrappedValue)
        }, set: { newPoint in
            y.wrappedValue = newPoint.y
        }), in: coordinateSpace)
    }
    
    public func readGeometry(origin: Binding<CGPoint>, in coordinateSpace: CoordinateSpace) -> some View {
        background(OriginGeometry(origin: origin, in: coordinateSpace))
    }
}
