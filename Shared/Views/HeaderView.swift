//
//  HeaderView.swift
//  SwiftUI Study
//
//  Created by Rapha on 9/9/22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        GeometryReader { view in
            VStack {
                VStack {
                    Text("Viagens")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: .fontSizeMedium))
                        .padding(.top, 15)
                    Text("ESPECIAL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Book", size: .fontSizeMedium))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 30)
                    Text("BRASIL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: .fontSizeMedium))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 30)
                }
                .frame(width: view.size.width, height: 180, alignment: .top)
                .background(Color.purple)
                
                HStack {
                    Spacer()
                    
                    Button(action: {}) {
                        Text("Hotéis")
                            .font(.custom("Avenir Medium", size: .fontSizeRegular))
                            .foregroundColor(.white)
                    }
                    .frame(width: 100, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(.blue, lineWidth: 10))
                    .background(Color.blue)
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Text("Pacotes")
                            .font(.custom("Avenir Medium", size: .fontSizeRegular))
                            .foregroundColor(.white)
                    }
                    .frame(width: 100, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(.orange, lineWidth: 10))
                    .background(.orange)
                    
                    Spacer()
                }
                .offset(y: -25)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.fixed(width: 400, height: 220))
    }
}
