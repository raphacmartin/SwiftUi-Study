//
//  ContentView.swift
//  Shared
//
//  Created by Raphael Martin on 8/16/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            GeometryReader { view in
                VStack(spacing: 0) {
                    HeaderView()
                        .frame(height: 220)
                    
                    List (viagens) { viagem in
                        NavigationLink {
                            MapaView(coordinate: viagem.localizacao)
                                .navigationBarTitle(viagem.titulo)
                        } label: {
                            CelulaViagemView(viagem: viagem)
                        }
                    }
                    .listStyle(PlainListStyle())
                }
            }.edgesIgnoringSafeArea(.all)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
