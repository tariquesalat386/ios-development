//
//  Item.swift
//  ios-dev-poc
//
//  Created by Tarique Salat on 01/11/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
