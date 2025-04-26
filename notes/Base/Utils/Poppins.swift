//
//  Poppins.swift
//  notes
//
//  Created by Ahmet Bostanci on 25.04.2025.
//

import Foundation


enum Poppins: String {
    case black, bold, italic, light, medium, regular, semiBold, thin
    
    var fontname: String {
        "Poppins-\(self.rawValue.capitalized)"
    }
}
