import SwiftUI

struct ContentView: View {
    @State private var idade: String = ""
    @State private var idadeCanina: String = ""

    var body: some View {
        VStack {
            Image("dog")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .padding(.bottom, 20)
            
            Text("Calculador de idade canina!")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 20)
            
            TextField("Digite a idade humana", text: $idade)
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.bottom, 20)
            
            Button(action: calcularDogAge) {
                Text("Calcular")
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .frame(maxWidth: .infinity)
            }
            .padding(.horizontal, 20)

            if !idadeCanina.isEmpty {
                Text("A idade do cachorro é \(idadeCanina) anos.")
                    .font(.title)
                    .fontWeight(.medium)
                    .padding(.top, 20)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .cornerRadius(20)
    }
    
    func calcularDogAge() {
        if let idadeHumano = Int(idade) {
            idadeCanina = String(idadeHumano * 7)
        } else {
            idadeCanina = ""
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
