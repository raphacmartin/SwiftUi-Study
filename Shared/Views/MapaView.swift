//
//  MapaView.swift
//  SwiftUI Study
//
//  Created by Rapha on 9/15/22.
//

import SwiftUI
import MapKit

struct MapaView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        return MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapaView_Previews: PreviewProvider {
    static var previews: some View {
        MapaView(coordinate: viagens[0].localizacao)
    }
}
