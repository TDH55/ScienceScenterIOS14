//
//  VirtualExhbitListView.swift
//  ScienceScenter
//
//  Created by Taylor Howard on 6/9/20.
//  Copyright © 2020 Taylor Howard. All rights reserved.
//

import SwiftUI

struct VirtualExhbitListView: View {
    var body: some View {
        NavigationView{
            List{
                Section(header:
                    Text("Astronomy")
                        .font(.headline)
                ){
                    NavigationLink(destination: NameThePlanet()){
                        Text("Name the Planet")
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("Virtual Exhibits"))
        }
    }
}

struct VirtualExhbitListView_Previews: PreviewProvider {
    static var previews: some View {
        VirtualExhbitListView()
    }
}
