//
//  TopBarStateModel.swift
//  BezierPaths
//
//  Created by Dima Manyahin on 7/16/18.
//  Copyright © 2018 Dima Manyahin. All rights reserved.
//

import Foundation


fileprivate extension TopBarStateModel {
    
    enum UserDefaultKeys : String {
        case leftPanelVisible
        case rightPanelVisible
    }
    
}

class TopBarStateModel {
    
    init() {
        var defaults = [String : Any]()
        defaults[.leftPanelVisible] = true
        defaults[.rightPanelVisible] = true
        
        UserDefaults.standard.register(defaults: defaults)
    }
    
    var leftPanelVisible : Bool {
        get {
            return UserDefaults.standard.bool(forKey: UserDefaultKeys.leftPanelVisible.rawValue)
        }
        set {
            UserDefaults.standard.set(newValue, forKey: UserDefaultKeys.leftPanelVisible.rawValue)
        }
    }

    var rightPanelVisible : Bool {
        get {
            return UserDefaults.standard.bool(forKey: UserDefaultKeys.rightPanelVisible.rawValue)
        }
        set {
            UserDefaults.standard.set(newValue, forKey: UserDefaultKeys.rightPanelVisible.rawValue)
        }
    }
    
}

fileprivate extension Dictionary where Key == TopBarStateModel.UserDefaultKeys.RawValue {
    subscript(key: TopBarStateModel.UserDefaultKeys) -> Value? {
        get {
            return self[key.rawValue]
        }
        set {
            self[key.rawValue] = newValue
        }
    } 
}


