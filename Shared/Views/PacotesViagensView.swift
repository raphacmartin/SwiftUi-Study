//
//  PacotesViagensView.swift
//  SwiftUI Study
//
//  Created by Rapha on 9/19/22.
//

import SwiftUI

struct PacotesViagensView: View {
    var body: some View {
        VStack {
            Text("Pacotes")
                .font(.custom("Avenir Medium", size: 30))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            List(PacoteDeViagem.Categoria.allCases) { continent in
                SecaoPacotesView(
                    continente: continent,
                    pacotes: pacotesViagem.filter { $0.categoria == continent}
                )
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.hidden)
                .padding(.bottom, 24.0)
            }
            .listStyle(.plain)
        }.padding(.horizontal, 10)
    }
}

struct PacotesViagensView_Previews: PreviewProvider {
    static var previews: some View {
        PacotesViagensView()
    }
}
