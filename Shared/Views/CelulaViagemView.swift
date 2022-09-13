//
//  CelulaViagemView.swift
//  SwiftUI Study
//
//  Created by Rapha on 9/9/22.
//

import SwiftUI

struct CelulaViagemView: View {
    var viagem: Viagem
    
    @Environment(\.horizontalSizeClass)
    var horizontalSizeClass
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(viagem.titulo)
                .font(.custom("Avenir", size: .fontSizeRegular(for: horizontalSizeClass)))
            Image(viagem.imagem)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: .cellImageHeight(for: horizontalSizeClass))
                .clipped()
            HStack {
                Text(viagem.quantidadeDeDias)
                    .font(.custom("Avenir", size: .fontSizeRegular(for: horizontalSizeClass)))
                Spacer()
                Text(viagem.valor)
                    .font(.custom("Avenir", size: .fontSizeRegular(for: horizontalSizeClass)))
            }
        }
    }
}

struct CelulaViagemView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CelulaViagemView(viagem: viagens[0])
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 350, height: 200))
            
            CelulaViagemView(viagem: viagens[0])
                .environment(\.horizontalSizeClass, .regular)
                .previewLayout(.fixed(width: 835, height: 300))
            
        }
        
    }
}
