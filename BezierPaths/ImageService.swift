//
//  ImageService.swift
//  BezierPaths
//
//  Created by Dima Manyahin on 7/13/18.
//  Copyright © 2018 Dima Manyahin. All rights reserved.
//

import Cocoa

extension NSImage.Name {
    
    static let leftPanelTopBarIconName = NSImage.Name("leftPanelTopBarIcon")
    
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
    
    func image(identifier: ImageService.ImageIdentifier) -> NSImage? {
        var result : NSImage? = nil
        switch identifier {
        case .leftPanelTopBarIcon:
            result = NSImage(named: .leftPanelTopBarIconName)
        default:
            break
        }
        return result
    }
    
}
