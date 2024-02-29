//
//  Shortcut.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/26/24.
//

import Foundation

struct Shortcut: Hashable {
    var shortcutIcon: String
    var shortcutLabel: String
    
    init(shortcutIcon: String, shortcutLabel: String) {
        self.shortcutIcon = shortcutIcon
        self.shortcutLabel = shortcutLabel
    }
}
