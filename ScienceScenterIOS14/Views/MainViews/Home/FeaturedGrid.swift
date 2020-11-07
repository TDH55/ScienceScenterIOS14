//
//  FeaturedGrid.swift
//  ScienceScenterIOS14
//
//  Created by Taylor Howard on 6/26/20.
//

import SwiftUI

struct FeaturedGrid: View {
    let exhibits: [Exhibit] = Bundle.main.decode([Exhibit].self, from: "exhibits.json")
    
    let columns = [ GridItem(.adaptive(minimum: 150))]
//    let columns = [
//        GridItem(.flexible(minimum: 100)),
//        GridItem(.flexible(minimum: 100))
//    ]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Featured")
                .font(.title2)
                .bold()
            LazyVGrid(columns: columns, spacing: 20){
                ForEach(exhibits){exhibit in
                    NavigationLink(destination: ExhibitDetailView(exhibit: exhibit)){
                        ZStack(alignment: Alignment(horizontal: .center, vertical: .top)){
                            
                            Image(exhibit.image[0])
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(25.0)
                            Text(exhibit.name)
                                .font(.headline)
                                .bold()
                                .foregroundColor(.primary)
                                .padding(5)
                                .background(Color.purple)
                                
                                .cornerRadius(15)
                        }
                        
                    }
                    
                }
            }
            
            
        }
    }
}

struct FeaturedGrid_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedGrid()
    }
}
