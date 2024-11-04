//
//  TelaMusica.swift
//  Aula04
//
//  Created by Turma01-6 on 01/11/24.
//

import SwiftUI

struct TelaMusica: View {
    
    @State var musica: Musica
    
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [Color.pink,Color.black], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack {
                Image(musica.capa)
            }
        }
        
    }
}

