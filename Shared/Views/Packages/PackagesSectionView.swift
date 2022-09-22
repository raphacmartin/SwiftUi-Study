//
//  PackagesSectionView.swift
//  SwiftUI Study
//
//  Created by Rapha on 9/19/22.
//

import SwiftUI

struct PackagesSectionView: View {
    let continent: TripPackage.Continent
    let packages: [TripPackage]
    
    var body: some View {
        VStack {
            Text(continent.rawValue)
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(packages) { package in
                        PackageCellView(tripPackage: package)
                    }
                }
            }
        }
        .background(Color(red: 0.98, green: 0.98, blue: 0.98))
    }
}

struct SecaoPacotesView_Previews: PreviewProvider {
    static var previews: some View {
        PackagesSectionView(continent: .northAmerica, packages: tripPackages)
            .previewLayout(.fixed(width: 600, height: 300))
    }
}
