//
//  Content3.swift
//  Aula01
//
//  Created by Turma01-6 on 23/10/24.
//

import SwiftUI

struct Content3: View {
    var body: some View {
        VStack {
            HStack {
                Text("Isacamilli")
                Spacer()
            }
            //Spacer()
            HStack {
                Circle()
                    .fill(.gray)
                    .frame(width: 130)
                VStack {
                    HStack {
                        VStack {
                            Text("9")
                            Text("Posts")
                        }
                        VStack {
                            Text("54")
                            Text("Followers")
                        }
                        VStack {
                            Text("31")
                            Text("Following")
                        }
                    }
                    Button("UNFOLLOW"){}
                }
            }
            VStack {
                HStack {
                    Text("Isabella Camilli")
                    Spacer()
                }
                HStack {
                    Text("Amo viver")
                    Spacer()
                }
            }
        }
        .padding()
    }
}

#Preview {
    Content3()
}
