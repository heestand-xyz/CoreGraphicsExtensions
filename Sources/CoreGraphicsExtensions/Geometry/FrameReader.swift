//
//  FrameGeometry.swift
//
//
//  Created by Anton Heestand on 2022-07-31.
//

import SwiftUI

@available(*, deprecated)
public struct FrameGeometry: View {
    
    @Binding var frame: CGRect
    let coordinateSpace: CoordinateSpace
    let timing: ReaderTiming
    
    public init(
        frame: Binding<CGRect>,
        in coordinateSpace: CoordinateSpace,
        timing: ReaderTiming
    ) {
        _frame = frame
        self.coordinateSpace = coordinateSpace
        self.timing = timing
    }
    
    public var body: some View {
        GeometryReader { geometry in
            Color.clear
                .onAppear {
                    guard timing.contains(.onAppear) else { return }
                    frame = geometry.frame(in: coordinateSpace)
                }
                .onChange(of: geometry.frame(in: coordinateSpace)) { newFrame in
                    guard timing.contains(.onChange) else { return }
                    frame = newFrame
                }
        }
    }
}

extension View {
    
    // MARK: - Frame
    
    public func readGeometry<T: Hashable>(
        frames: Binding<[T: CGRect]>,
        id: T,
        in coordinateSpace: CoordinateSpace
    ) -> some View {
        readGeometry(frame: Binding<CGRect>(get: {
            frames.wrappedValue[id] ?? .zero
        }, set: { newFrame in
            frames.wrappedValue[id] = newFrame
        }), in: coordinateSpace)
    }
    
    @available(*, deprecated, message: "Please use onGeometryChange")
    public func readGeometry(
        frame: Binding<CGRect>,
        in coordinateSpace: CoordinateSpace,
        timing: ReaderTiming
    ) -> some View {
        background(FrameGeometry(frame: frame, in: coordinateSpace, timing: timing))
    }
    
    public func readGeometry(
        frame: Binding<CGRect>,
        in coordinateSpace: CoordinateSpace
    ) -> some View {
        self.onGeometryChange(for: CGRect.self) { geometry in
            geometry.frame(in: coordinateSpace)
        } action: { newFrame in
            frame.wrappedValue = newFrame
        }
    }
    
    @available(*, deprecated, message: "Please use onGeometryChange")
    public func readGeometryFrame(
        in coordinateSpace: CoordinateSpace,
        timing: ReaderTiming,
        _ update: @escaping (CGRect) -> ()
    ) -> some View {
        background(FrameGeometry(frame: Binding(get: { .zero }, set: { newFrame in
            update(newFrame)
        }), in: coordinateSpace, timing: timing))
    }
    
    // MARK: - Center
    
    public func readGeometry<T: Hashable>(
        centers: Binding<[T: CGPoint]>,
        id: T,
        in coordinateSpace: CoordinateSpace
    ) -> some View {
        readGeometry(center: Binding<CGPoint>(get: {
            centers.wrappedValue[id] ?? .zero
        }, set: { newCenter in
            centers.wrappedValue[id] = newCenter
        }), in: coordinateSpace)
    }
    
    @available(*, deprecated, message: "Please use onGeometryChange")
    public func readGeometry(
        center: Binding<CGPoint>,
        in coordinateSpace: CoordinateSpace,
        timing: ReaderTiming
    ) -> some View {
        background(FrameGeometry(frame: Binding(get: { .zero }, set: { newFrame in
            center.wrappedValue = newFrame.center
        }), in: coordinateSpace, timing: timing))
    }
    
    public func readGeometry(
        center: Binding<CGPoint>,
        in coordinateSpace: CoordinateSpace
    ) -> some View {
        self.onGeometryChange(for: CGPoint.self) { geometry in
            geometry.frame(in: coordinateSpace).center
        } action: { newCenter in
            center.wrappedValue = newCenter
        }
    }
    
    @available(*, deprecated, message: "Please use onGeometryChange")
    public func readGeometryCenter(
        in coordinateSpace: CoordinateSpace,
        timing: ReaderTiming,
        _ update: @escaping (CGPoint) -> ()
    ) -> some View {
        background(FrameGeometry(frame: Binding(get: { .zero }, set: { newFrame in
            update(newFrame.center)
        }), in: coordinateSpace, timing: timing))
    }
}
