//
//  OriginGeometry.swift
//
//
//  Created by Anton Heestand on 2022-07-31.
//

import SwiftUI

@available(*, deprecated)
public struct OriginGeometry: View {
    
    @Binding var origin: CGPoint
    let coordinateSpace: CoordinateSpace
    let timing: ReaderTiming
    
    public init(
        origin: Binding<CGPoint>,
        in coordinateSpace: CoordinateSpace,
        timing: ReaderTiming
    ) {
        _origin = origin
        self.coordinateSpace = coordinateSpace
        self.timing = timing
    }
    
    public var body: some View {
        GeometryReader { geometry in
            Color.clear
                .onAppear {
                    guard timing.contains(.onAppear) else { return }
                    origin = geometry.frame(in: coordinateSpace).origin
                }
                .onChange(of: geometry.frame(in: coordinateSpace).origin) { newOrigin in
                    guard timing.contains(.onChange) else { return }
                    origin = newOrigin
                }
        }
    }
}

extension View {
    
    // MARK: - Origin
    
    public func readGeometry<T: Hashable>(
        origins: Binding<[T: CGPoint]>,
        id: T,
        in coordinateSpace: CoordinateSpace
    ) -> some View {
        readGeometry(origin: Binding<CGPoint>(get: {
            origins.wrappedValue[id] ?? .zero
        }, set: { newOrigin in
            origins.wrappedValue[id] = newOrigin
        }), in: coordinateSpace)
    }
    
    @available(*, deprecated, message: "Please use onGeometryChange")
    public func readGeometry(
        origin: Binding<CGPoint>,
        in coordinateSpace: CoordinateSpace,
        timing: ReaderTiming
    ) -> some View {
        background(OriginGeometry(origin: origin, in: coordinateSpace, timing: timing))
    }
        
    public func readGeometry(
        origin: Binding<CGPoint>,
        in coordinateSpace: CoordinateSpace
    ) -> some View {
        self.onGeometryChange(for: CGPoint.self) { geometry in
            geometry.frame(in: coordinateSpace).origin
        } action: { newOrigin in
            origin.wrappedValue = newOrigin
        }
    }
    
    @available(*, deprecated, message: "Please use onGeometryChange")
    public func readGeometryOrigin(
        in coordinateSpace: CoordinateSpace,
        timing: ReaderTiming,
        _ update: @escaping (CGPoint) -> ()
    ) -> some View {
        background(OriginGeometry(origin: Binding(get: { .zero }, set: { newOrigin in
            update(newOrigin)
        }), in: coordinateSpace, timing: timing))
    }
    
    // MARK: - X
    
    public func readGeometry<T: Hashable>(
        xs: Binding<[T: CGFloat]>,
        id: T,
        in coordinateSpace: CoordinateSpace
    ) -> some View {
        readGeometry(x: Binding<CGFloat>(get: {
            xs.wrappedValue[id] ?? .zero
        }, set: { newX in
            xs.wrappedValue[id] = newX
        }), in: coordinateSpace)
    }
    
    @available(*, deprecated, message: "Please use onGeometryChange")
    public func readGeometry(
        x: Binding<CGFloat>,
        in coordinateSpace: CoordinateSpace,
        timing: ReaderTiming
    ) -> some View {
        readGeometry(origin: Binding<CGPoint>(get: {
            CGPoint(x: x.wrappedValue, y: 0.0)
        }, set: { newPoint in
            x.wrappedValue = newPoint.x
        }), in: coordinateSpace, timing: timing)
    }
    
    public func readGeometry(
        x: Binding<CGFloat>,
        in coordinateSpace: CoordinateSpace
    ) -> some View {
        self.onGeometryChange(for: CGFloat.self) { geometry in
            geometry.frame(in: coordinateSpace).origin.x
        } action: { newX in
            x.wrappedValue = newX
        }
    }
    
    @available(*, deprecated, message: "Please use onGeometryChange")
    public func readGeometryX(
        in coordinateSpace: CoordinateSpace,
        timing: ReaderTiming,
        _ update: @escaping (CGFloat) -> ()
    ) -> some View {
        background(OriginGeometry(origin: Binding(get: { .zero }, set: { newOrigin in
            update(newOrigin.x)
        }), in: coordinateSpace, timing: timing))
    }
    
    // MARK: - Y
    
    public func readGeometry<T: Hashable>(
        ys: Binding<[T: CGFloat]>,
        id: T,
        in coordinateSpace: CoordinateSpace
    ) -> some View {
        readGeometry(y: Binding<CGFloat>(get: {
            ys.wrappedValue[id] ?? .zero
        }, set: { newY in
            ys.wrappedValue[id] = newY
        }), in: coordinateSpace)
    }
    
    @available(*, deprecated, message: "Please use onGeometryChange")
    public func readGeometry(
        y: Binding<CGFloat>,
        in coordinateSpace: CoordinateSpace,
        timing: ReaderTiming
    ) -> some View {
        readGeometry(origin: Binding<CGPoint>(get: {
            CGPoint(x: 0.0, y: y.wrappedValue)
        }, set: { newPoint in
            y.wrappedValue = newPoint.y
        }), in: coordinateSpace, timing: timing)
    }
    
    public func readGeometry(
        y: Binding<CGFloat>,
        in coordinateSpace: CoordinateSpace
    ) -> some View {
        self.onGeometryChange(for: CGFloat.self) { geometry in
            geometry.frame(in: coordinateSpace).origin.y
        } action: { newY in
            y.wrappedValue = newY
        }
    }
    
    @available(*, deprecated, message: "Please use onGeometryChange")
    public func readGeometryY(
        in coordinateSpace: CoordinateSpace,
        timing: ReaderTiming,
        _ update: @escaping (CGFloat) -> ()
    ) -> some View {
        background(OriginGeometry(origin: Binding(get: { .zero }, set: { newOrigin in
            update(newOrigin.y)
        }), in: coordinateSpace, timing: timing))
    }
}
