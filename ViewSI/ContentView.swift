//
//  ContentView.swift
//  ViewSI
//
//  Created by Horacio Parra Rodriguez on 19/09/23.
//

import SwiftUI
import UIKit

struct ContentView: View {
    let color = UIColor(hex: "#EFF2CC")
    @State var title = "Hey"
    @State var text = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack() {
                    NameTextField(name: NSLocalizedString("Nombre del usuario:", comment: ""),
                                  textFieldTitle:  NSLocalizedString("Nombre", comment: ""))
                    NameTextField(name: NSLocalizedString("Cédula:", comment: ""),
                                  textFieldTitle: NSLocalizedString("Número", comment: ""))
                    NameTextField(name: NSLocalizedString("Correo electrónico:", comment: ""),
                                  textFieldTitle: NSLocalizedString("Correo", comment: ""))
                    NameTextField(name: NSLocalizedString("Celular:", comment: ""),
                                  textFieldTitle: NSLocalizedString("Número", comment: ""))
                    NameTextField(name: NSLocalizedString("Fecha de recibido:", comment: ""),
                                  textFieldTitle: NSLocalizedString("Fecha", comment: ""))
                    NameTextField(name: NSLocalizedString("Fecha de entrega:", comment: ""),
                                  textFieldTitle: NSLocalizedString("Fecha", comment: ""))
                    NameTextField(name: NSLocalizedString("Caso:", comment: ""),
                                  textFieldTitle: NSLocalizedString("Caso", comment: ""))
                    NameTextField(name: NSLocalizedString("Departamento asignado:", comment: ""),
                                  textFieldTitle: NSLocalizedString("Departamento", comment: ""))
                    NameTextField(name: NSLocalizedString("Abogado asignado", comment: ""),
                                  textFieldTitle: NSLocalizedString("Nombre", comment: ""))
                    NameTextField(name: NSLocalizedString("Resumen:", comment: ""), textFieldTitle: NSLocalizedString("", comment: ""), axis: .vertical, height: 300)
                    Button {
                        
                    } label: {
                        Image(systemName: "square.and.arrow.down")
                            .font(.system(size: 50))
                    }
                }
                .navigationTitle(Text(NSLocalizedString("Correspondencia", comment: "")))
                .toolbarBackground(Color(uiColor: color), for: .navigationBar)
                .padding()
            }
            
        }
        
    }
}


struct NameTextField: View {
    @State var text = ""
    
    var name: String
    var textFieldTitle: String
    var axis: Axis = .horizontal
    var height: CGFloat = 40
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(name)
                .font(.headline)
                .foregroundColor(.primary)
            TextField(NSLocalizedString(textFieldTitle, comment: ""), text: $text, axis: axis)
                .frame(height: height)
                .background(.tertiary)
                .multilineTextAlignment(.leading)
                .cornerRadius(16)
        }
        .padding(.top)
    }
    
}
#Preview {
    ContentView()
}
