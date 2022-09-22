//
//  TripCellView.swift
//  SwiftUI Study
//
//  Created by Rapha on 9/9/22.
//

import SwiftUI

struct TripCellView: View {
    var trip: Trip
    
    @Environment(\.horizontalSizeClass)
    var horizontalSizeClass
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(trip.title)
                .font(.custom("Avenir", size: .fontSizeRegular(for: horizontalSizeClass)))
            Image(trip.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: .cellImageHeight(for: horizontalSizeClass))
                .clipped()
            HStack {
                Text(trip.numberOfDays)
                    .font(.custom("Avenir", size: .fontSizeRegular(for: horizontalSizeClass)))
                Spacer()
                Text(trip.value)
                    .font(.custom("Avenir", size: .fontSizeRegular(for: horizontalSizeClass)))
            }
        }
    }
}

struct CelulaViagemView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TripCellView(trip: trips[0])
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 350, height: 200))
            
            TripCellView(trip: trips[0])
                .environment(\.horizontalSizeClass, .regular)
                .previewLayout(.fixed(width: 835, height: 300))
            
        }
        
    }
}
