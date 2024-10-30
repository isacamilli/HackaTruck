//
//  RosaView.swift
//  Aula03
//
//  Created by Turma01-6 on 30/10/24.
//

import SwiftUI

struct RosaView: View {
    var body: some View {
        ZStack {
            Color(.systemPink)
                
                .edgesIgnoringSafeArea(.top)
            VStack {
                
                ZStack {
                    Circle()
                        .frame(width:250)
                    
                    Image(systemName: "paintbrush")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .foregroundColor(Color(.systemPink))
                }
                
                
            }
        }
    }
}

#Preview {
    RosaView()
}
