//
//  TheScienceView.swift
//  ScienceScenter
//
//  Created by Taylor Howard on 6/18/20.
//  Copyright © 2020 Taylor Howard. All rights reserved.
//

import SwiftUI

//sheet view
struct TheScienceView: View {
    @Binding var isPresented: Bool
    let exhibit: Exhibit
    var body: some View {
        NavigationView{
            GeometryReader{geo in
                VStack(alignment:.leading){
//                    Image(self.exhibit.image)
//                        .resizable()
//                        .frame(width: geo.size.width, height: geo.size.height/2)
//                    Text(self.exhibit.name)
//                        .font(.title)
//                        .font(.title)
//                        .bold()
//                        .padding(.leading, 10)
//                        .padding(.trailing, 10)
                    HStack(spacing: 0){
                        Image("placeholder3")
                        .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: geo.size.width/2)
                        Image("placeholder4")
                        .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: geo.size.width/2)
                    }
                    ScrollView(.vertical){
                        Text(self.exhibit.science)
                    }
                    .padding(10)
                    Spacer()
                }
            }
            .navigationBarTitle(Text(exhibit.name), displayMode: .inline)
            .navigationBarItems(trailing: Button(action:{
                self.isPresented = false
            }){
                Text("Done")
                    .font(.headline)
            })
        }
        
    }
}

#if DEBUG
struct TheScienceView_Previews: PreviewProvider {
    @State static var isPresented: Bool = true
    static let exhibits: [Exhibit] = Bundle.main.decode([Exhibit].self, from: "exhibits.json")
    static var previews: some View {
        TheScienceView(isPresented: $isPresented, exhibit: exhibits[0])
    }
}
#endif
