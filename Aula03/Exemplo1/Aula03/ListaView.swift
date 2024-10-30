//
//  ListaView.swift
//  Aula03
//
//  Created by Turma01-6 on 30/10/24.
//

import SwiftUI

struct ListaView: View {
    var body: some View {
        NavigationStack {
            
            List {
                HStack {
                    Text ("Item")
                    Spacer()
                    Image(systemName: "paintbrush")
                }
                HStack {
                    Text ("Item")
                    Spacer()
                    Image(systemName: "paintbrush.pointed")
                }
                HStack {
                    Text ("Item")
                    Spacer()
                    Image(systemName: "paintpalette")
                }
            }.navigationTitle("List")
        }
    }
}

#Preview {
    ListaView()
}
