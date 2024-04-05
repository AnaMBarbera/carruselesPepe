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
                ScrollView{
                VStack{
                    Text("VSTACK")
                    Button("Cambia a HStack"){
                        esVStack.toggle()
                    }
                    LlamaCarrusel2()
                }
                }
                
            }else{
                ScrollView(.horizontal){
                HStack{
                    Text("HSTACK")
                    Button("Cambia a VStack"){
                        esVStack.toggle()
                    }
                    LlamaCarrusel2()
                }
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
    }.frame(width: 300)
    }
}
                            
                            
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

