//
//  ImageService.swift
//  BezierPaths
//
//  Created by Dima Manyahin on 7/13/18.
//  Copyright © 2018 Dima Manyahin. All rights reserved.
//

import Cocoa

fileprivate extension NSImage.Name {
    static let leftPanelTopBarIconName = NSImage.Name("LeftPanelTopBarIcon")
    static let leftPanelTopBarIconPushedName = NSImage.Name("LeftPanelTopBarIconPushed")
    static let rightPanelTopBarIconName = NSImage.Name("RightPanelTopBarIcon")
    static let rightPanelTopBarIconPushedName = NSImage.Name("RightPanelTopBarIconPushed")
}

extension ImageService {
    
    public struct ImageIdentifier : Hashable, Equatable, RawRepresentable {
        public var rawValue: String
        
        public init(_ rawValue: String) {
            self.rawValue = rawValue
        }
        
        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }
}

class ImageService {
    
    class func image(identifier: ImageService.ImageIdentifier) -> NSImage? {
        var result : NSImage? = nil
        switch identifier {
        case .leftPanelTopBarIcon:
            result = NSImage(named: .leftPanelTopBarIconName)
        case .leftPanelTopBarIconPushed:
            result = NSImage(named: .leftPanelTopBarIconPushedName)
        case .rightPanelTopBarIcon:
            result = NSImage(named: .rightPanelTopBarIconName)
        case .rightPanelTopBarIconPushed:
            result = NSImage(named: .rightPanelTopBarIconPushedName)
        default:
            break
        }
        return result
    }
    
}
