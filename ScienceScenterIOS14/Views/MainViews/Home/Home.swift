//
//  Home.swift
//  ScienceScenterIOS14
//
//  Created by Taylor Howard on 6/26/20.
//

import SwiftUI

struct Home: View {
    var body: some View {
        
        NavigationView{
            GeometryReader{geo in
                ScrollView{
                    
                    
                    VStack(spacing: 0){
                        MapView()
                            .frame(height: geo.size.height/3)
                            .cornerRadius(25.0)
                            .padding(.horizontal)
                        LocationTitleView()
                        FeaturedGrid()
                            .padding(.horizontal)
                    }
                }
            }
            .navigationTitle(Text("Welcome"))
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
