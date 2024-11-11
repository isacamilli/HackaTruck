//
//  ContentView.swift
//  Aula09
//
//  Created by Turma01-6 on 06/11/24.
//

import SwiftUI

struct Coiso : Identifiable {
    var id: Int
    var nome: String
    var imagem: String
}

struct ContentView: View {
    
    @State private var menuNome: String = "Opções"
    var camisas = [
        Coiso(id: 1, nome: "Simples", imagem: "camisa-simples"),
        Coiso(id: 2, nome: "Manga Longa", imagem: "manga-longa"),
        Coiso(id: 3, nome: "Regata", imagem: "camisa-regata")
        Coiso(id: 4, nome: "Camisa social", imagem: "camisa-social")
        Coiso(id: 5, nome: "Cropped", imagem: "cropped")
        Coiso(id: 6, nome: "Vestido", imagem: "vestido")
    ]
   // var calças = [
      //  Coiso(id: 1, nome: "Calça", imagem: "calça", imagem:")
    
    //]
    
    var body: some View {
        ZStack {
            Color("Fundo")
                .ignoresSafeArea()
            VStack {
                HStack{
                    VStack {
                        HStack {
                            Circle()
                                .frame(width: 60)
                            Text("úsuario")
                            Spacer()
                            Image("Logo")
                        }
                        Menu(menuNome) {
                            Button("Calça",action: troca)
                            Button("Camisa",action: troca)
                        }
                    }.padding()
                }
            }
        }
    }
    
    func troca(){
        if menuNome == "Opções" {
            menuNome = "calças"
        }
    }
}


#Preview {
    ContentView()
}
