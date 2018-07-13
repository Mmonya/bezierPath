//
//  MainWindowController.swift
//  BezierPaths
//
//  Created by Dima Manyahin on 7/12/18.
//  Copyright © 2018 Dima Manyahin. All rights reserved.
//

import Cocoa

extension NSToolbarItem.Identifier {
    static let panelSwitcher = NSToolbarItem.Identifier("panelSwitcher")
}

extension ImageService.ImageIdentifier {
    static let leftPanelTopBarIcon = ImageService.ImageIdentifier("leftPanelTopBarIcon")
}

class MainWindowController: NSWindowController {
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        
    }
    
    override func validateToolbarItem(_ item: NSToolbarItem) -> Bool {
        var result = true
        if  item.itemIdentifier == .panelSwitcher {
            if let segmentedControl = item.view as? NSSegmentedControl {
//                segmentedControl.setImage(, forSegment: )
            }
            result = false
        }
        return result
    }
    
}
