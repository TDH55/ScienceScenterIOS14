//
//  ExhibitList.swift
//  ScienceScenter
//
//  Created by Taylor Howard on 6/3/20.
//  Copyright © 2020 Taylor Howard. All rights reserved.
//

import SwiftUI

struct ExhibitList: View {
    let exhibits: [Exhibit] = Bundle.main.decode([Exhibit].self, from: "exhibits.json")
    var body: some View {
        NavigationView{
            List{
                ForEach(exhibits){exhibit in
                    NavigationLink(destination: ExhibitDetailView(exhibit: exhibit)){
                        ExhibitListItem(exhibit: exhibit)
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("Exhibits"))
        }
    }
}

struct ExhibitList_Previews: PreviewProvider {
    static var previews: some View {
        ExhibitList()
    }
}
