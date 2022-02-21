//
//  File.swift
//  
//
//  Created by Anton Heestand on 2022-01-13.
//

//import SwiftUI
//
//@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
//extension Angle: Codable {
//
//    enum CodingKeys: CodingKey {
//        case radians
//    }
//
//    public init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        let radians: Double = try container.decode(Double.self, forKey: .radians)
//        self = Angle(radians: radians)
//    }
//
//    public func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(radians, forKey: .radians)
//    }
//
//}
