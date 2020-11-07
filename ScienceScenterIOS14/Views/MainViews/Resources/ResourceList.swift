//
//  ResourceList.swift
//  ScienceScenter
//
//  Created by Taylor Howard on 6/3/20.
//  Copyright © 2020 Taylor Howard. All rights reserved.
//

import SwiftUI

struct ResourceList: View {
    let resources = Bundle.main.decode([categories].self, from: "ResourceList.json")
    var body: some View {
        NavigationView{
            List{
                ForEach(resources){category in
                    if !category.resources.isEmpty{
                        Section(header:
                            Text(category.name).font(.headline)
                        ){
                            ForEach(category.resources){resource in
                                NavigationLink(
                                    destination: ResourceDetailView(resource: resource),
                                    label: {
                                        Text(resource.name)
                                    })
                            }
                        }
                    }
                }
            }.listStyle(GroupedListStyle())
                .navigationBarTitle(Text("Resources"))
        }
    }
}

struct ResourceList_Previews: PreviewProvider {
    static var previews: some View {
        ResourceList()
    }
}
