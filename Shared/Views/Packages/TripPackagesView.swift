//
//  TripPackagesView.swift
//  SwiftUI Study
//
//  Created by Rapha on 9/19/22.
//

import SwiftUI

struct TripPackagesView: View {
    var body: some View {
        NavigationView {
            List(TripPackage.Continent.allCases) { continent in
                PackagesSectionView(
                    continent: continent,
                    packages: tripPackages.filter { $0.continent == continent}
                )
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.hidden)
                .padding(.bottom, 24.0)
            }
            .listStyle(.plain)
            .navigationTitle("Pacotes")
            .padding(.horizontal, 10)
        }
    }
}

struct PacotesViagensView_Previews: PreviewProvider {
    static var previews: some View {
        TripPackagesView()
    }
}
