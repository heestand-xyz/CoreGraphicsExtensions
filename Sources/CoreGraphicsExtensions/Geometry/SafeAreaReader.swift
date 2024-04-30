//
//  SafeAreaGeometry.swift
//
//
//  Created by Anton Heestand on 2022-07-31.
//

import SwiftUI

@available(iOS 14, macOS 11, *)
public struct SafeArea: Equatable {
    /// Size ignoring safe area
    public let size: CGSize
    /// Frame within safe area
    public let frame: CGRect
    /// Safe area insets
    public let insets: EdgeInsets
    init(frame: CGRect, insets: EdgeInsets) {
        size = frame.size + CGSize(width: insets.leading + insets.trailing,
                                   height: insets.top + insets.bottom)
        self.insets = insets
        self.frame = CGRect(origin: CGPoint(x: insets.leading, y: insets.top),
                            size: frame.size)
    }
    public static let zero = SafeArea(frame: .zero, insets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
    public static let one = SafeArea(frame: .one, insets: EdgeInsets(top: 1.0, leading: 1.0, bottom: 1.0, trailing: 1.0))
}

@available(iOS 14, macOS 11, *)
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
                    safeArea = SafeArea(frame: geometry.frame(in: .global),
                                        insets: geometry.safeAreaInsets)
                }
                .onChange(of: geometry.frame(in: .global)) { newFrame in
                    guard timing.contains(.onChange) else { return }
                    safeArea = SafeArea(frame: newFrame,
                                        insets: geometry.safeAreaInsets)
                }
        }
    }
}

@available(iOS 14, macOS 11, *)
extension View {
    
    public func readGeometry(
        safeArea: Binding<SafeArea>,
        timing: ReaderTiming = .always
    ) -> some View {
        background(SafeAreaGeometry(safeArea: safeArea, timing: timing))
    }
    
    public func readGeometrySafeArea(
        _ update: @escaping (SafeArea) -> (),
        timing: ReaderTiming = .always
    ) -> some View {
        background(SafeAreaGeometry(safeArea: Binding(get: { .zero }, set: { newSafeArea in
            update(newSafeArea)
        }), timing: timing))
    }
}
