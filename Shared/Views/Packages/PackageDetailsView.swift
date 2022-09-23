//
//  PackageDetailsView.swift
//  SwiftUI Study
//
//  Created by Rapha on 9/22/22.
//

import SwiftUI

struct PackageDetailsView: View {
    let package: TripPackage
    
    var body: some View {
        ScrollView (showsIndicators: false) {
            VStack {
                Image(package.images[0])
                    .resizable()
                    .frame(height: 200)
                
                VStack {
                    Text(package.title.uppercased())
                        .font(.custom("Avenir Black", size: 26))
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text(package.description)
                        .font(.custom("Avenir", size: 16))
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 10)
                    
                    Text(package.details)
                        .font(.custom("Avenir Black", size: 16))
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 10)
                    
                    HStack {
                        VStack {
                            Text("Válido para o período de:")
                                .font(.custom("Avenir", size: 14))
                                .foregroundColor(.gray)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text(package.date)
                                .font(.custom("Avenir", size: 14))
                                .foregroundColor(.gray)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        
                        VStack {
                            Text("R$ \(package.value)")
                                .font(.custom("Avenir Black", size: 25))
                                .foregroundColor(.orange)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            Text("Sem taxas em até 12x")
                                .font(.custom("Avenir", size: 14))
                                .foregroundColor(.gray)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            
                        }
                    }
                    
                    Divider()
                    
                    Text("O que está incluso")
                        .font(.custom("Avenir", size: 20))
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack {
                        VStack {
                            Image("icone-apartamento")
                            Text("Apartamento")
                                .font(.custom("Avenir", size: 14))
                                .foregroundColor(.gray)
                                .frame(maxWidth: .infinity)
                        }
                        VStack {
                            Image("icone-aviao")
                            Text("Passagem aérea")
                                .font(.custom("Avenir", size: 14))
                                .foregroundColor(.gray)
                                .frame(maxWidth: .infinity)
                        }
                    }
                    
                    Divider()
                    
                }.padding(.horizontal, 0)
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct PackageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PackageDetailsView(package: tripPackages[0])
    }
}
