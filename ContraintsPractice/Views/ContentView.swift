//
//  ContentView.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 3/4/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import SwiftUI
import MapKit


struct ContentView: View {
    var body: some View {
        
        
        NavigationView{
            
            VStack {
                
                
                MapView()
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 150)

                CircleImage()
                    .offset(y: -130)
                    .padding(.bottom, -130)

                VStack(alignment: .leading) {
                    Text("Bill Gates")
                        .font(.title)
                    HStack(alignment: .top) {
                        Text("Founder of Microsoft")
                            .font(.subheadline)
                        Spacer()
                        Text("Seattle, WA")
                            .font(.subheadline)
                    }
                }
                .padding()

                Spacer()
            }
            
        .navigationBarTitle("Profile")
        .navigationBarHidden(false)

            
        }
        
        
        
    }
}




struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 47.6062, longitude: -122.3321)
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }

}

struct MapView_Preview: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct CircleImage: View {
    var body: some View {
        Image("billHeadshot")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Preview: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}


