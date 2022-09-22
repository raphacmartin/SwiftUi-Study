//
//  HomeTabView.swift
//  SwiftUI Study
//
//  Created by Rapha on 9/22/22.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        TabView {
            FeaturedTripsView()
                .tabItem {
                    Text("Destaques")
                    Image("icone-destaques")
                }
            TripPackagesView()
                .tabItem {
                    Text("Pacotes")
                    Image("icone-mala")
                }
        }
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
