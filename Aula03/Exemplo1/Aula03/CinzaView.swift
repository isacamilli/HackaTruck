//
//  CinzaView.swift
//  Aula03
//
//  Created by Turma01-6 on 30/10/24.
//

import SwiftUI

struct CinzaView: View {
    var body: some View {
        ZStack {
            Color(.gray)
                
                .edgesIgnoringSafeArea(.top)
            VStack {
                
                ZStack {
                    Circle()
                        .frame(width:250)
                    
                    Image(systemName: "paintpalette")
                        .resizable()
                        .frame(width: 170, height: 150)
                        .foregroundColor(Color(.gray))
                }
                
            }
        }
    }
}

#Preview {
    CinzaView()
}
