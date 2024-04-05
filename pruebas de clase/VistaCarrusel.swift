//
//  VistaCarrusel.swift
//  pruebas de clase
//
//  Created by Jose on 5/4/24.
//

import SwiftUI

struct VistaCarrusel: View {
    
    var imagen : String
    var animal : String
    var descripcion : String
    var autor : String
    
    var body: some View {
        
        VStack{
            Image(imagen)
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment: .leading){
                    Text(animal)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(descripcion)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                    Text("Foto realizada por \(autor)")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
            }.padding()
        }
        .cornerRadius(15)
        .overlay(
        RoundedRectangle(cornerRadius: 15)
            .stroke(.gray,lineWidth: 2)
        )
        .padding([.top, .horizontal])
        /*.border(.black)
        .cornerRadius(10)
        .padding()*/
        }
    }

struct VistaCarrusel_Previews: PreviewProvider {
    static var previews: some View {
        VistaCarrusel(imagen: "bufalo", animal: "El Búfalo", descripcion: "El rey de la Sabana Africana", autor: "El Nico")
    }
}
