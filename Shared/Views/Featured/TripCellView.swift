//
//  TripCellView.swift
//  SwiftUI Study
//
//  Created by Rapha on 9/9/22.
//

import SwiftUI

struct TripCellView: ResponsiveView {
    var resources: ResponsiveResources {
        ResponsiveResources(sizeClass: horizontalSizeClass)
    }
    
    var trip: Trip
    
    @Environment(\.horizontalSizeClass)
    var horizontalSizeClass
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(trip.title)
                .font(resources.labelFont)
            Image(trip.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: .cellImageHeight(for: horizontalSizeClass))
                .clipped()
            HStack {
                Text(trip.numberOfDays)
                    .font(resources.labelFont)
                Spacer()
                Text(trip.value)
                    .font(resources.labelFont)
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
