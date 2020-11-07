//
//  ResourceDetailView.swift
//  ScienceScenterIOS14
//
//  Created by Taylor Howard on 7/1/20.
//

import SwiftUI

struct ResourceDetailView: View {
    let resource: categories.Resource
    var body: some View {
        GeometryReader{geo in
            ScrollView( .vertical){
                VStack(alignment: .leading){
                    if let imageString = resource.image{
                        Image(imageString)
                            .resizable()
                            .frame(height: geo.size.height/2)
//                            .frame(width: geo.size.width)
                            .cornerRadius(25.0)
                            .padding(.horizontal)
                    }
//                    Text(resource.name)
//                        .font(.title)
//                        .bold()
//                        .padding(.leading, 10)
//                        .padding(.trailing, 10)
//                        .padding(.bottom)
                    Text(resource.description)
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                    Spacer()
                    HStack {
                        Spacer()
                        Link("Visit \(resource.name)", destination: URL(string: resource.link)!)
                        Spacer()
                    }
                    .padding(10)
                }
            }
            
        }
        .navigationTitle(resource.name)
    }
}

struct ResourceDetailView_Previews: PreviewProvider {
    static let resources = Bundle.main.decode([categories].self, from: "ResourceList.json")
    static var previews: some View {
        ResourceDetailView(resource: resources[0].resources[0])
    }
}
