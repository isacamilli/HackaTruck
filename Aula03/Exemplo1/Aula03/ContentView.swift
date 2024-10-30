//
//  ContentView.swift
//  Aula03
//
//  Created by Turma01-6 on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            RosaView()
                .tabItem {
                    Label("Rosa",systemImage: "paintbrush.fill")
                }
            AzulView()
                .tabItem {
                    Label("Azul", systemImage: "paintbrush.pointed.fill")
                }
            CinzaView()
                .tabItem {
                    Label("Cinza", systemImage: "paintpalette.fill")
                }
            ListaView()
                .tabItem {
                    Label("Lista", systemImage: "list.bullet")
                }
            
        }
    }
}

#Preview {
    ContentView()
}
