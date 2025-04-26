//
//  Image.swift
//  notes
//
//  Created by Ahmet Bostanci on 25.04.2025.
//

import SwiftUI

extension Image {
    static var UnavailableIcon: Image {
        Image(systemName: "note.text.badge.plus")
    }
    
    static var BackIcon: Image {
        Image(.backArrow)
    }
    
    static var SearchIcon: Image {
        Image(.search)
    }
    
    static var CancelIcon: Image {
        Image(systemName: "xmark.circle.fill")
    }
    
    static var TrashIcon: Image {
        Image(systemName: "trash.fill")
    }
}
