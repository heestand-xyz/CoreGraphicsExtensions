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
    
    public init(size: Binding<CGSize>) {
        _size = size
    }
    
    public var body: some View {
        GeometryReader { geometry in
            Color.clear
                .onAppear {
                    size = geometry.size
                }
                .onChange(of: geometry.size) { size in
                    self.size = size
                }
        }
    }
}

@available(iOS 14, macOS 11, *)
extension View {
    
    @available(*, deprecated, renamed: "readGeometry(size:)")
    public func geometry(size: Binding<CGSize>) -> some View {
        readGeometry(size: size)
    }
    
    public func readGeometry<T: Hashable>(widths: Binding<[T: CGFloat]>, id: T) -> some View {
        readGeometry(width: Binding<CGFloat>(get: {
            widths.wrappedValue[id] ?? .zero
        }, set: { newWidth in
            widths.wrappedValue[id] = newWidth
        }))
    }
    
    public func readGeometry(width: Binding<CGFloat>) -> some View {
        readGeometry(size: Binding<CGSize>(get: {
            CGSize(width: width.wrappedValue, height: 1.0)
        }, set: { newSize in
            width.wrappedValue = newSize.width
        }))
    }
    
    public func readGeometry<T: Hashable>(heights: Binding<[T: CGFloat]>, id: T) -> some View {
        readGeometry(height: Binding<CGFloat>(get: {
            heights.wrappedValue[id] ?? .zero
        }, set: { newHeight in
            heights.wrappedValue[id] = newHeight
        }))
    }
    
    public func readGeometry(height: Binding<CGFloat>) -> some View {
        readGeometry(size: Binding<CGSize>(get: {
            CGSize(width: 1.0, height: height.wrappedValue)
        }, set: { newSize in
            height.wrappedValue = newSize.height
        }))
    }
    
    public func readGeometry<T: Hashable>(sizes: Binding<[T: CGSize]>, id: T) -> some View {
        readGeometry(size: Binding<CGSize>(get: {
            sizes.wrappedValue[id] ?? .zero
        }, set: { newSize in
            sizes.wrappedValue[id] = newSize
        }))
    }
    
    public func readGeometry(size: Binding<CGSize>) -> some View {
        background(SizeGeometry(size: size))
    }
}
