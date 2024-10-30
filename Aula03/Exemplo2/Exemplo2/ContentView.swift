//
//  ContentView.swift
//  Exemplo2
//
//  Created by Turma01-6 on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            ZStack {
                Color(.black)
                    .ignoresSafeArea()
                VStack {
                    NavigationLink (destination: Pag1()) {
                        
                        Text("modo1")
                            .foregroundColor(Color.white)
                            .frame(width: 230,height: 100)
                            .background(Color(.pink))
                            .cornerRadius(6)
                        
                    }
                    NavigationLink (destination: Pag1()) {
                        Text("modo2")
                            .foregroundColor(Color.white)
                            .frame(width: 230,height: 100)
                            .background(Color(.pink))
                            .cornerRadius(6)
                    }
                    NavigationLink (destination: Pag1()) {
                        Text("modo3")
                            .foregroundColor(Color.white)
                            .frame(width: 230,height: 100)
                            .background(Color(.pink))
                            .cornerRadius(6)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
