//
//  Optional.swift
//  notes
//
//  Created by Ahmet Bostanci on 25.04.2025.
//

import Foundation

extension Optional where Wrapped == String {
    var stringValue: String {
        guard let self = self else { return "" }
        return self
    }
}
