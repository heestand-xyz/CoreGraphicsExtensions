//
//  SizeGeometry.swift
//
//
//  Created by Anton Heestand on 2022-07-31.
//

import SwiftUI

@available(iOS 14, macOS 11, *)
public struct SizeGeometry: View {
    
    @Binding var size: CGSize
    let timing: ReaderTiming
    
    public init(
        size: Binding<CGSize>,
        timing: ReaderTiming
    ) {
        _size = size
        self.timing = timing
    }
    
    public var body: some View {
        GeometryReader { geometry in
            Color.clear
                .onAppear {
                    guard timing.contains(.onAppear) else { return }
                    size = geometry.size
                }
                .onChange(of: geometry.size) { size in
                    guard timing.contains(.onChange) else { return }
                    self.size = size
                }
        }
    }
}

@available(iOS 14, macOS 11, *)
extension View {
    
    // MARK: - Size
    
    @available(*, deprecated, renamed: "readGeometry(size:)")
    public func geometry(
        size: Binding<CGSize>
    ) -> some View {
        readGeometry(size: size)
    }
    
    public func readGeometry<T: Hashable>(
        sizes: Binding<[T: CGSize]>,
        id: T,
        timing: ReaderTiming = .always
    ) -> some View {
        readGeometry(size: Binding<CGSize>(get: {
            sizes.wrappedValue[id] ?? .zero
        }, set: { newSize in
            sizes.wrappedValue[id] = newSize
        }), timing: timing)
    }
    
    public func readGeometry(
        size: Binding<CGSize>,
        timing: ReaderTiming = .always
    ) -> some View {
        background(SizeGeometry(size: size, timing: timing))
    }
    
    public func readGeometrySize(
        timing: ReaderTiming = .always,
        _ update: @escaping (CGSize) -> ()
    ) -> some View {
        background(SizeGeometry(size: Binding(get: { .zero }, set: { newSize in
            update(newSize)
        }), timing: timing))
    }
    
    // MARK: - Width
    
    public func readGeometry<T: Hashable>(
        widths: Binding<[T: CGFloat]>,
        id: T,
        timing: ReaderTiming = .always
    ) -> some View {
        readGeometry(width: Binding<CGFloat>(get: {
            widths.wrappedValue[id] ?? .zero
        }, set: { newWidth in
            widths.wrappedValue[id] = newWidth
        }), timing: timing)
    }
    
    public func readGeometry(
        width: Binding<CGFloat>,
        timing: ReaderTiming = .always
    ) -> some View {
        readGeometry(size: Binding<CGSize>(get: {
            CGSize(width: width.wrappedValue, height: 1.0)
        }, set: { newSize in
            width.wrappedValue = newSize.width
        }), timing: timing)
    }
    
    public func readGeometryWidth(
        timing: ReaderTiming = .always,
        _ update: @escaping (CGFloat) -> ()
    ) -> some View {
        background(SizeGeometry(size: Binding(get: { .zero }, set: { newSize in
            update(newSize.width)
        }), timing: timing))
    }
    
    // MARK: - Height
    
    public func readGeometry<T: Hashable>(
        heights: Binding<[T: CGFloat]>,
        id: T,
        timing: ReaderTiming = .always
    ) -> some View {
        readGeometry(height: Binding<CGFloat>(get: {
            heights.wrappedValue[id] ?? .zero
        }, set: { newHeight in
            heights.wrappedValue[id] = newHeight
        }), timing: timing)
    }
    
    public func readGeometry(
        height: Binding<CGFloat>,
        timing: ReaderTiming = .always
    ) -> some View {
        readGeometry(size: Binding<CGSize>(get: {
            CGSize(width: 1.0, height: height.wrappedValue)
        }, set: { newSize in
            height.wrappedValue = newSize.height
        }), timing: timing)
    }
    
    public func readGeometryHeight(
        timing: ReaderTiming = .always,
        _ update: @escaping (CGFloat) -> ()
    ) -> some View {
        background(SizeGeometry(size: Binding(get: { .zero }, set: { newSize in
            update(newSize.height)
        }), timing: timing))
    }
}
