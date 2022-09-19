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
            
            ScrollView {
                ForEach(PacoteDeViagem.Categoria.allCases, id: \.self) { continente in
                    SecaoPacotesView(
                        continente: continente,
                        pacotes: pacotesViagem.filter { $0.categoria == continente}
                    )
                }
            }
        }.padding(.horizontal, 10)
    }
}

struct PacotesViagensView_Previews: PreviewProvider {
    static var previews: some View {
        PacotesViagensView()
    }
}
