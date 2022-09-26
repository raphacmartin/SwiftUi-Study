//
//  PackageDetailsView.swift
//  SwiftUI Study
//
//  Created by Rapha on 9/22/22.
//

import SwiftUI

struct PackageDetailsView: View {
    let package: TripPackage
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView (showsIndicators: false) {
            VStack {
                ZStack(alignment: .top) {
                    Image(package.images[0])
                        .resizable()
                        .frame(height: 200)
                    
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image("icone-voltar")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20, alignment: .leading)
                            .padding(10)
                            .padding(.top, 20)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                }
                
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
                    
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Text("Escolher opção")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .font(.custom("Avenir Black", size: 16))
                            .foregroundColor(.white)
                    }
                    .frame(width: .infinity, height: 40)
                    .background(Color.teal)
                    
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 10)
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
