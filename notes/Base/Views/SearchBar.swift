//
//  SearchBar.swift
//  notes
//
//  Created by Ahmet Bostanci on 25.04.2025.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchTxt: String
    @FocusState private var isFocused: Bool
    
    var body: some View {
        TextField("Search", text: $searchTxt)
            .focused($isFocused)
            .overlay(
                ZStack {
                    Image.CancelIcon
                        .foregroundStyle(.white)
                        .opacity(searchTxt.isEmpty ? 0.0 : 1.0)
                        .onTapGesture {
                            searchTxt = ""
                            isFocused = false
                        }
                    
                    Image.SearchIcon
                        .opacity(searchTxt.isEmpty ? 1.0 : 0.0)
                },
                alignment: .trailing
            )
            .foregroundStyle(.white)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(.appGrayColor1)
            )
    }
}

#Preview {
    SearchBar(searchTxt: .constant(""))
}
