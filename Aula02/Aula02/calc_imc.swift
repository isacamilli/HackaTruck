
import SwiftUI

struct calc_imc: View {
    @State private var peso: Double = 0
    @State private var alt: Double = 0
    @State private var cor = "Branco"
    @State private var res: String = ""
    
    var body: some View {
        ZStack {
            Color(cor).ignoresSafeArea()
            VStack {
                VStack{
                    Text("Calculadora de IMC")
                        .font(.largeTitle)
                    Spacer()
                    TextField("Enter your weight: ", value: $peso, format: .number)
                        .textContentType(.oneTimeCode).padding()
                        .background(Color.white)
                        .cornerRadius(6)
                        .multilineTextAlignment(.center)
                    Spacer()
                    TextField("Enter your height in meters: ", value: $alt, format: .number)
                        .textContentType(.oneTimeCode).padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .multilineTextAlignment(.center)
                    Spacer()
                    Button(action: {calc()},
                        label:{Text ("Calcular")
                        .foregroundStyle(.white)
                        .padding()
                        .background(Capsule())})
                }
                VStack {
                    Spacer()
                    Text(res)
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                    Spacer()
                }
            } .padding()
        }
    }
        
        
        func calc(){
            var coiso: Double = peso / pow(alt, 2)
            if coiso < 18.5 {
                res = "Baixo peso"
                cor = "Baixo_P"
            }
            else if coiso < 25 {
                res = "Normal"
                cor = "Normal"
            }
            else if coiso < 30 {
                res = "Sobrepeso"
                cor = "SobreP"
            }
            else if coiso >= 30 {
                res = "Obeso"
                cor = "Obes"
            }
            
        }
    }

#Preview {
    calc_imc()
}
