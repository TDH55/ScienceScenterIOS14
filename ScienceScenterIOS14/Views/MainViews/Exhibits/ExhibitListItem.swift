//
//  ExhibitListItem.swift
//  ScienceScenter
//
//  Created by Taylor Howard on 6/4/20.
//  Copyright © 2020 Taylor Howard. All rights reserved.
//

import SwiftUI

struct ExhibitListItem: View {
    let exhibit: Exhibit
    var body: some View {
        HStack{
//            Image(exhibit.image)
//                .resizable()
//                .frame(width: 50, height: 50)
            ExhibitCircleImage(exhibit: exhibit)
            Text(exhibit.name)
            Spacer()
        }
    }
}

struct ExhibitListItem_Previews: PreviewProvider {
    static let exhibits: [Exhibit] = Bundle.main.decode([Exhibit].self, from: "exhibits.json")
    
    static var previews: some View {
        ExhibitListItem(exhibit: exhibits[0])
    }
}
