//
//  SizeGeometry.swift
//
//
//  Created by Anton Heestand on 2022-07-31.
//

import SwiftUI

@available(*, deprecated)
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

extension View {
    
    // MARK: - Size
    
    public func readGeometry<T: Hashable>(
        sizes: Binding<[T: CGSize]>,
        id: T
    ) -> some View {
        readGeometry(size: Binding<CGSize>(get: {
            sizes.wrappedValue[id] ?? .zero
        }, set: { newSize in
            sizes.wrappedValue[id] = newSize
        }))
    }
    
    @available(*, deprecated, message: "Please use onGeometryChange")
    public func readGeometry(
        size: Binding<CGSize>,
        timing: ReaderTiming
    ) -> some View {
        background(SizeGeometry(size: size, timing: timing))
    }
    
    public func readGeometry(
        size: Binding<CGSize>
    ) -> some View {
        self.onGeometryChange(for: CGSize.self) { geometry in
            geometry.size
        } action: { newSize in
            if size.wrappedValue != newSize {
                size.wrappedValue = newSize
            }
        }
    }
    
    @available(*, deprecated, message: "Please use onGeometryChange")
    public func readGeometrySize(
        timing: ReaderTiming,
        _ update: @escaping (CGSize) -> ()
    ) -> some View {
        background(SizeGeometry(size: Binding(get: { .zero }, set: { newSize in
            update(newSize)
        }), timing: timing))
    }
    
    // MARK: - Width
    
    public func readGeometry<T: Hashable>(
        widths: Binding<[T: CGFloat]>,
        id: T
    ) -> some View {
        readGeometry(width: Binding<CGFloat>(get: {
            widths.wrappedValue[id] ?? .zero
        }, set: { newWidth in
            widths.wrappedValue[id] = newWidth
        }))
    }
    
    @available(*, deprecated, message: "Please use onGeometryChange")
    public func readGeometry(
        width: Binding<CGFloat>,
        timing: ReaderTiming
    ) -> some View {
        readGeometry(size: Binding<CGSize>(get: {
            CGSize(width: width.wrappedValue, height: 1.0)
        }, set: { newSize in
            width.wrappedValue = newSize.width
        }), timing: timing)
    }
    
    public func readGeometry(
        width: Binding<CGFloat>
    ) -> some View {
        self.onGeometryChange(for: CGFloat.self) { geometry in
            geometry.size.width
        } action: { newWidth in
            if width.wrappedValue != newWidth {
                width.wrappedValue = newWidth
            }
        }
    }
    
    @available(*, deprecated, message: "Please use onGeometryChange")
    public func readGeometryWidth(
        timing: ReaderTiming,
        _ update: @escaping (CGFloat) -> ()
    ) -> some View {
        background(SizeGeometry(size: Binding(get: { .zero }, set: { newSize in
            update(newSize.width)
        }), timing: timing))
    }
    
    // MARK: - Height
    
    public func readGeometry<T: Hashable>(
        heights: Binding<[T: CGFloat]>,
        id: T
    ) -> some View {
        readGeometry(height: Binding<CGFloat>(get: {
            heights.wrappedValue[id] ?? .zero
        }, set: { newHeight in
            heights.wrappedValue[id] = newHeight
        }))
    }
    
    @available(*, deprecated, message: "Please use onGeometryChange")
    public func readGeometry(
        height: Binding<CGFloat>,
        timing: ReaderTiming
    ) -> some View {
        readGeometry(size: Binding<CGSize>(get: {
            CGSize(width: 1.0, height: height.wrappedValue)
        }, set: { newSize in
            height.wrappedValue = newSize.height
        }), timing: timing)
    }
    
    public func readGeometry(
        height: Binding<CGFloat>
    ) -> some View {
        self.onGeometryChange(for: CGFloat.self) { geometry in
            geometry.size.height
        } action: { newHeight in
            if height.wrappedValue != newHeight {
                height.wrappedValue = newHeight
            }
        }
    }
    
    @available(*, deprecated, message: "Please use onGeometryChange")
    public func readGeometryHeight(
        timing: ReaderTiming,
        _ update: @escaping (CGFloat) -> ()
    ) -> some View {
        background(SizeGeometry(size: Binding(get: { .zero }, set: { newSize in
            update(newSize.height)
        }), timing: timing))
    }
}
