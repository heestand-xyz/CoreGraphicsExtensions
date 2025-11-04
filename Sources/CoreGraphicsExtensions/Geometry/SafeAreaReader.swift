//
//  SafeAreaGeometry.swift
//
//
//  Created by Anton Heestand on 2022-07-31.
//

import SwiftUI

@available(*, deprecated)
public struct SafeAreaGeometry: View {
    
    @Binding var safeArea: SafeArea
    let timing: ReaderTiming
    
    public init(
        safeArea: Binding<SafeArea>,
        timing: ReaderTiming
    ) {
        _safeArea = safeArea
        self.timing = timing
    }
    
    public var body: some View {
        GeometryReader { geometry in
            Color.clear
                .onAppear {
                    guard timing.contains(.onAppear) else { return }
                    safeArea = SafeArea(size: geometry.size,
                                        insets: geometry.safeAreaInsets)
                }
                .onChange(of: geometry.size) { newSize in
                    guard timing.contains(.onChange) else { return }
                    safeArea = SafeArea(size: newSize,
                                        insets: geometry.safeAreaInsets)
                }
        }
    }
}

extension View {

    @available(*, deprecated, message: "Please use onGeometryChange")
    public func readGeometry(
        safeArea: Binding<SafeArea>,
        timing: ReaderTiming
    ) -> some View {
        background(SafeAreaGeometry(safeArea: safeArea, timing: timing))
    }
    
    public func readGeometry(
        safeArea: Binding<SafeArea>
    ) -> some View {
        self.onGeometryChange(for: SafeArea.self) { geometry in
            SafeArea(size: geometry.size,
                     insets: geometry.safeAreaInsets)
        } action: { newSafeArea in
            let isFirst: Bool = safeArea.wrappedValue == .zero || safeArea.wrappedValue == .one
            if isFirst {
                safeArea.wrappedValue = newSafeArea
            } else if safeArea.wrappedValue != newSafeArea {
                // Freeze fix with one cycle delay for loop on device rotation
                Task { @MainActor in
                    safeArea.wrappedValue = newSafeArea
                }
            }
        }
    }
    
    @available(*, deprecated, message: "Please use onGeometryChange")
    public func readGeometrySafeArea(
        _ update: @escaping (SafeArea) -> (),
        timing: ReaderTiming
    ) -> some View {
        background(SafeAreaGeometry(safeArea: Binding(get: { .zero }, set: { newSafeArea in
            update(newSafeArea)
        }), timing: timing))
    }
}
