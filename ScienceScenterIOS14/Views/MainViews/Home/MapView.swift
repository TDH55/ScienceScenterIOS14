//
//  MapView.swift
//  ScienceScenterIOS14
//
//  Created by Taylor Howard on 6/26/20.
//

import SwiftUI
import MapKit

struct MyAnnotationItem: Identifiable {
    var coordinate: CLLocationCoordinate2D
    let id = UUID()
}

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.1313585, longitude: -94.5264242), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    var annotationItems: [MyAnnotationItem] = [
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 37.1313585, longitude: -94.5264242))
    ]
    var body: some View {
        GeometryReader{geo in
            VStack {
                Map(coordinateRegion: $region, interactionModes: .zoom, annotationItems: annotationItems){item in
                    MapMarker(coordinate: item.coordinate)
                    //                    MapAnnotation(coordinate: item.coordinate){
                    //                        HomeImage()
                    //                            .frame(width: geo.size.width/10)
                }
            }
            
        }
    }
}
//}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
