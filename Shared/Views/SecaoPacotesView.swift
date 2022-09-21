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
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(pacotes) { pacote in
                        PacoteViagemCell(pacoteViagem: pacote)
                    }
                }
            }
        }
        .background(Color(red: 0.98, green: 0.98, blue: 0.98))
    }
}

struct SecaoPacotesView_Previews: PreviewProvider {
    static var previews: some View {
        SecaoPacotesView(continente: .americaDoNorte, pacotes: pacotesViagem)
            .previewLayout(.fixed(width: 600, height: 300))
    }
}
