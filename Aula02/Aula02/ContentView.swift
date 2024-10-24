//
//  ContentView.swift
//  Aula02
//
//  Created by Turma01-6 on 24/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var nome = ""
    var body: some View {
    //@State private var alert = "ALERTA"
        VStack {
            ZStack {
                Image("flores")
                    .opacity(0.3)
                    .frame(height: 16)
                VStack {
                    Text ("Bem vindo \(nome)")
                    TextField("", text: $nome).multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    Image("logo")
                    Image("images")
                    Spacer()

                }
            }
        }
        .padding()
        //Button(action: {alert}, label: {
         //   Text("Entrar")
        //})
    }
}

#Preview {
    ContentView()
}
