//
//  Content2.swift
//  Aula01
//
//  Created by Turma01-6 on 23/10/24.
//

import SwiftUI

struct Content2: View {
    var body: some View {
        VStack{
            Spacer()
            HStack {
                Image("simbIfrn")
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 160,height: 160)
                Spacer()
                VStack(content: {
                    /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                        .foregroundColor(.red)
                    Text("Isabella")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Text("sjhaiodoa")
                        .foregroundColor(.yellow)
                })
                    
            }
            Spacer()
        }
        .padding()
        
    }
}

#Preview {
    Content2()
}
