
import SwiftUI

struct calc_imc: View {
    @State private var peso: String = ""
    @State private var alt: String = ""
    @State private var nuovo_peso : Double = 0
    @State private var nuova_alt: Double = 0
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
                    TextField("Enter your weight: ", text: $peso)
                        .textContentType(.oneTimeCode).padding()
                        .background(Color.white)
                        .cornerRadius(6)
                        .multilineTextAlignment(.center)
                    Spacer()
                    TextField("Enter your height in meters: ", text: $alt)
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
            nuovo_peso = (peso as NSString).doubleValue
            nuova_alt = (alt as NSString).doubleValue
            let coiso: Double = nuovo_peso / pow(nuova_alt, 2)
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
