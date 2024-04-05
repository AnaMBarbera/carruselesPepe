//
//  ContentView.swift
//  pruebas de clase
//
//  Created by Jose on 5/4/24.
//

import SwiftUI

struct ContentView: View {
    @State private var esVStack : Bool = true
    var body: some View {
        VStack{
            
            if esVStack{
                Text("CARRUSEL VERTICAL")
                Button("Cambia a HStack"){
                    esVStack.toggle()
                }.buttonStyle(TresDButtonStyle())
                ScrollView{
                VStack{
                    
                    LlamaCarrusel2()
                }
                }
                
            }else{
                Text("CARRUSEL HORIZONTAL")
                Button("Cambia a VStack"){
                    esVStack.toggle()
                }.buttonStyle(TresDButtonStyle())
                ScrollView(.horizontal){
                HStack{
                    
                    LlamaCarrusel2()
                }
                    Spacer()
                }
            }
        }
    }
}

struct LlamaCarrusel2 : View {
    var body: some View{
    
    Group{
        VistaCarrusel(imagen: "bufalo", animal: "El Búfalo", descripcion: "El rey de la Sabana Africana", autor: "El Nico")
        //.frame(width: 300)
        VistaCarrusel(imagen: "ciervo", animal: "El Ciervo", descripcion: "El aperitivo de los Leones", autor: "El Marco")
        //.frame(width: 300)
        VistaCarrusel(imagen: "lemur", animal: "El Lémur", descripcion: "El cotilla de la Selva", autor: "El Jean Pierre")
        //.frame(width: 300)
        VistaCarrusel(imagen: "alcala", animal: "Animal de madrid", descripcion: "El Gato madrileño", autor: "El Albertpo")
        //.frame(width: 300)
    }.frame(width: 380)
    }
}

struct TresDButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(10)
            .foregroundColor(.white)
            .background(
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                        .shadow(color: .black, radius: configuration.isPressed ? 0 : 5, x: 0, y: configuration.isPressed ? 0 : 5)
                        .opacity(configuration.isPressed ? 0.8 : 1)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white.opacity(0.5))
                        .padding(2)
                        .blur(radius: 2)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white.opacity(0.2), lineWidth: 2)
                        )
                }
            )
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
    }
}
                            
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

