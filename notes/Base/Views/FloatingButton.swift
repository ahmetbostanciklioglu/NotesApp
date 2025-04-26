//
//  FloatingButton.swift
//  notes
//
//  Created by Ahmet Bostanci on 26.04.2025.
//

import SwiftUI

struct FloatingButton: View {
    @EnvironmentObject var dataHolder: DataHolder
    
    var body: some View {
        Spacer()
        HStack {
            NavigationLink {
                NoteCard(passedTaskItem: nil)
                    .environmentObject(dataHolder)
            } label: {
                Text("+ New Task")
                    .poppins(.bold, 20)
            }
            .padding(15)
            .foregroundStyle(.white)
            .background(Color.accentColor)
            .clipShape(.capsule)
            .shadow(color: Color.black.opacity(0.3), radius: 3, x: 3, y: 3)
        }
    }
}

#Preview {
    FloatingButton()
}
