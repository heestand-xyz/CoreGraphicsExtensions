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
    
    public func readGeometry(size: Binding<CGSize>) -> some View {
        background(SizeGeometry(size: size))
    }
}
