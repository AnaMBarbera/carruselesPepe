//
//  ContentView.swift
//  pruebas de clase
//
//  Created by Jose on 5/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal){
        HStack{
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
