
import SwiftUI

struct calc_imc: View {
    @State private var peso: Int = 0
    @State private var alt: Int = 0
    @State private var cor = Color("Baixo_P")
    
    var body: some View {
        ZStack {
            Color(cor).ignoresSafeArea()
            VStack {
                Text("Calculadora de IMC")
                    .font(.largeTitle)
                TextField("Enter your weight: ", value: $peso, format: .number)
                    .textContentType(.oneTimeCode).padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .multilineTextAlignment(.center)
                    
                    
                TextField("Enter your hight: ",
                          value: $alt,
                          format: .number)
                
            } .padding()
        }
        
    }
}

#Preview {
    calc_imc()
}
