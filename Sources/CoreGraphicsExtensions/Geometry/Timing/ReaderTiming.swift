//
//  File.swift
//  
//
//  Created by Anton Heestand on 2024-04-30.
//

import Foundation

public struct ReaderTiming: OptionSet {
    
    public let rawValue: Int
    
    public static let onAppear = ReaderTiming(rawValue: 1 << 0)
    public static let onChange = ReaderTiming(rawValue: 1 << 1)
    
    public static let always: ReaderTiming = [.onAppear, .onChange]
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
}
