//
//  ContentView.swift
//  Shared
//
//  Created by Raphael Martin on 8/16/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            GeometryReader { view in
                VStack(spacing: 0) {
                    HeaderView()
                        .frame(height: 220)
                    
                    List (trips) { trip in
                        NavigationLink {
                            MapView(coordinate: trip.location)
                                .navigationBarTitle(trip.title)
                        } label: {
                            TripCellView(trip: trip)
                        }
                    }
                    .listStyle(PlainListStyle())
                }
            }.edgesIgnoringSafeArea(.all)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
