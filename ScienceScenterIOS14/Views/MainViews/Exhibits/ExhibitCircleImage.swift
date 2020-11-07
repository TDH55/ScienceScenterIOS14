//
//  ExhibitCircleImage.swift
//  ScienceScenter
//
//  Created by Taylor Howard on 6/4/20.
//  Copyright © 2020 Taylor Howard. All rights reserved.
//

import SwiftUI

struct ExhibitCircleImage: View {
    let exhibit: Exhibit
    var body: some View {
        Image(exhibit.image[0])
            .resizable()
            .frame(width: 50, height: 50)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.primary, lineWidth: 1))
            .shadow(radius: 5)
    }
}

struct ExhibitCircleImage_Previews: PreviewProvider {
    static let exhibits: [Exhibit] = Bundle.main.decode([Exhibit].self, from: "exhibits.json")
    static var previews: some View {
        ExhibitCircleImage(exhibit: exhibits[0])
    }
}
