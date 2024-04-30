//
//  FrameGeometry.swift
//
//
//  Created by Anton Heestand on 2022-07-31.
//

import SwiftUI

@available(iOS 14, macOS 11, *)
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

@available(iOS 14, macOS 11, *)
extension View {
    
    // MARK: - Frame
    
    @available(*, deprecated, renamed: "readGeometry(frame:in:)")
    public func geometry(
        frame: Binding<CGRect>,
        in coordinateSpace: CoordinateSpace
    ) -> some View {
        readGeometry(frame: frame, in: coordinateSpace)
    }
    
    public func readGeometry<T: Hashable>(
        frames: Binding<[T: CGRect]>,
        id: T,
        in coordinateSpace: CoordinateSpace,
        timing: ReaderTiming = .always
    ) -> some View {
        readGeometry(frame: Binding<CGRect>(get: {
            frames.wrappedValue[id] ?? .zero
        }, set: { newFrame in
            frames.wrappedValue[id] = newFrame
        }), in: coordinateSpace)
    }
    
    public func readGeometry(
        frame: Binding<CGRect>,
        in coordinateSpace: CoordinateSpace,
        timing: ReaderTiming = .always
    ) -> some View {
        background(FrameGeometry(frame: frame, in: coordinateSpace, timing: timing))
    }
    
    public func readGeometryFrame(
        in coordinateSpace: CoordinateSpace,
        timing: ReaderTiming = .always,
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
        in coordinateSpace: CoordinateSpace,
        timing: ReaderTiming = .always
    ) -> some View {
        readGeometry(center: Binding<CGPoint>(get: {
            centers.wrappedValue[id] ?? .zero
        }, set: { newCenter in
            centers.wrappedValue[id] = newCenter
        }), in: coordinateSpace, timing: timing)
    }
    
    public func readGeometry(
        center: Binding<CGPoint>,
        in coordinateSpace: CoordinateSpace,
        timing: ReaderTiming = .always
    ) -> some View {
        background(FrameGeometry(frame: Binding(get: { .zero }, set: { newFrame in
            center.wrappedValue = newFrame.center
        }), in: coordinateSpace, timing: timing))
    }
    
    public func readGeometryCenter(
        in coordinateSpace: CoordinateSpace,
        timing: ReaderTiming = .always,
        _ update: @escaping (CGPoint) -> ()
    ) -> some View {
        background(FrameGeometry(frame: Binding(get: { .zero }, set: { newFrame in
            update(newFrame.center)
        }), in: coordinateSpace, timing: timing))
    }
}
