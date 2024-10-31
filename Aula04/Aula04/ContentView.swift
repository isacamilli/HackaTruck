//
//  ContentView.swift
//  Aula04
//
//  Created by Turma01-6 on 31/10/24.
//

import SwiftUI

struct ContentView: View {
    
    struct Musica : Identifiable {
        var id : Int
        var titulo : String
        var autor : String
        var capa : String
    }
    
    var musicas = [
        Musica(id: 1, titulo: "The Archer", autor: "Taylor Swift", capa: "CapaLover"),
        Musica(id: 2, titulo: "Wildest Dreams", autor: "Taylor Swift", capa: "Capa1989"),
        Musica(id: 3, titulo: "Cornelia Street", autor: "Taylor Swift",capa: "CapaLover"),
        Musica(id: 4, titulo: "I wanna be yours", autor: "Arctic Monkeys", capa: "CapaAM"),
        Musica(id: 5, titulo: "Fireside", autor: "Arctic Monkeys", capa: "CapaAM"),
        Musica(id: 6, titulo: "505", autor: "Arctic Monkeys", capa: "Capa505"),
        Musica(id: 7, titulo: "Dna", autor: "BTS", capa: "CapaLY"),
        Musica(id: 8, titulo: "Pied piper", autor: "BTS", capa: "CapaLY"),
        Musica(id: 9, titulo: "Smithereens", autor: "Twenty One Pilots", capa: "CapaTrench"),
        Musica(id: 10, titulo: "My Blood", autor: "Twenty One Pilots", capa: "CapaTrench")
    ]
    
    var body: some View {
        
            NavigationStack {
                ZStack {
                
                    LinearGradient(colors: [Color.pink, Color.black], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                    ScrollView{
                        VStack {
                            Image("CoverPhoto")
                                .resizable()
                                .frame(width: 200,height: 200).padding()
                            
                            HStack {
                                VStack(alignment: .leading){ 
                                    Text("Isa playlist")
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                                        .bold()
                                    HStack {
                                        Image("CapaLover").resizable().frame(width: 45, height: 45)
                                        Text("Isacamilli").foregroundColor(.white)
                                    }
                                }.padding(25)
                                Spacer()
                            }
                            
                            ForEach(musicas)
                            { a in
                                HStack {
                                    Image(a.capa)
                                        .resizable()
                                        .frame(width: 50 ,height: 50)
                                    VStack(alignment: .leading) {
                                        
                                        Text(a.titulo).foregroundColor(.white).multilineTextAlignment(.leading)
                                        
                                        Text(a.autor).foregroundColor(.white).multilineTextAlignment(.leading)
                                    }
                                    Spacer()
                                    Image(systemName: "ellipsis").foregroundColor(.white)
                                }
                            }
                            
                            
                            .padding()
                        }
                        ScrollView{
                            VStack {
                                Text("Sugeridos")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                HStack {
                                    Image("Capa505").resizable()
                                        .frame(width: 200,height: 200)
                                }
                            }
                        }
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
