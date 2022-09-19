//
//  SecaoPacotesView.swift
//  SwiftUI Study
//
//  Created by Rapha on 9/19/22.
//

import SwiftUI

struct SecaoPacotesView: View {
    let continente: PacoteDeViagem.Categoria
    let pacotes: [PacoteDeViagem]
    
    var body: some View {
        VStack {
            Text(continente.rawValue)
                .font(.custom("Avenir Black", size: 20))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(pacotes) { pacote in
                        PacoteViagemCell(pacoteViagem: pacote)
                    }
                }
            }
        }
        .padding(.bottom, 24.0)
    }
}

struct SecaoPacotesView_Previews: PreviewProvider {
    static var previews: some View {
        SecaoPacotesView(continente: .americaDoNorte, pacotes: pacotesViagem)
    }
}
