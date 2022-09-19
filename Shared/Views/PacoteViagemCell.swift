//
//  PacoteViagemCell.swift
//  SwiftUI Study
//
//  Created by Rapha on 9/19/22.
//

import SwiftUI

struct PacoteViagemCell: View {
    let pacoteViagem: PacoteDeViagem
    
    var body: some View {
        VStack {
            Image(pacoteViagem.imagens[0])
                .resizable()
                .frame(height: 135)
                .aspectRatio(contentMode: .fill)
                .clipped()
            Text(pacoteViagem.titulo)
                .font(.custom("Avenir Black", size: 12))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            Text(pacoteViagem.descricao)
                .font(.custom("Avenir", size: 10))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            Text(pacoteViagem.dataValidade)
                .font(.custom("Avenir", size: 10))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            Text("À partir de")
                .font(.custom("Avenir", size: 9))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
            Text("R$ \(pacoteViagem.valor)")
                .font(.custom("Avenir Black", size: 16))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                .foregroundColor(.orange)
            Text("em até 12x")
                .font(.custom("Avenir", size: 9))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
            Text("cancelamento grátis")
                .font(.custom("Avenir Black", size: 9))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                .foregroundColor(.green)
        }
        .frame(width: 180, height: 250)
    }
}

struct PacoteViagemCell_Previews: PreviewProvider {
    static var previews: some View {
        PacoteViagemCell(pacoteViagem: pacotesViagem[0])
    }
}
