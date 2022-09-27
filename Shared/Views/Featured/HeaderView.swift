//
//  HeaderView.swift
//  SwiftUI Study
//
//  Created by Rapha on 9/9/22.
//

import SwiftUI

struct HeaderView: ResponsiveView {
    var resources: ResponsiveResources {
        ResponsiveResources(sizeClass: horizontalSizeClass)
    }
    
    @Environment(\.horizontalSizeClass)
    var horizontalSizeClass
    
    var body: some View {
        GeometryReader { view in
            VStack(spacing: 0) {
                VStack {
                    Text("Viagens")
                        .foregroundColor(Color.white)
                        .font(resources.pageTitleFont)
                        .padding(.top, 25)
                    Text("ESPECIAL")
                        .foregroundColor(Color.white)
                        .font(resources.subtitleFont)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 30)
                    Text("BRASIL")
                        .foregroundColor(Color.white)
                        .font(resources.pageTitleFont)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 30)
                }
                .frame(width: view.size.width, height: .headerHeight(for: horizontalSizeClass), alignment: .top)
                .background(Color.purple)
                
                HStack {
                    Spacer()
                    
                    Button(action: {}) {
                        Text("Hotéis")
                            .font(resources.buttonLabelFont)
                            .foregroundColor(.white)
                    }
                    .frame(width: .buttonWidth(for: horizontalSizeClass), height: .buttonHeight(for: horizontalSizeClass))
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(.blue, lineWidth: 10))
                    .background(Color.blue)
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Text("Pacotes")
                            .font(resources.buttonLabelFont)
                            .foregroundColor(.white)
                    }
                    .frame(width: .buttonWidth(for: horizontalSizeClass), height: .buttonHeight(for: horizontalSizeClass))
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(.orange, lineWidth: 10))
                    .background(.orange)
                    
                    Spacer()
                }
                .offset(y: .buttonOffset(for: horizontalSizeClass))
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView()
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 400, height: 220))
            HeaderView()
                .environment(\.horizontalSizeClass, .regular)
                .previewLayout(.fixed(width: 835, height: 310))
        }
    }
}
