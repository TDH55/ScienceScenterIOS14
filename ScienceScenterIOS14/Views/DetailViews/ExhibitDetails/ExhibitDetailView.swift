//
//  ExhibitDetailView.swift
//  ScienceScenter
//
//  Created by Taylor Howard on 6/4/20.
//  Copyright © 2020 Taylor Howard. All rights reserved.
//

import SwiftUI

struct ExhibitDetailView: View {
    let exhibit: Exhibit
    @State var showingScienceSheet: Bool = false
    var body: some View {
        GeometryReader{geo in
            ScrollView{
            VStack(alignment: .leading) {
                Image(self.exhibit.image[0])
                    .resizable()
//                    .aspectRatio(contentMode: .fit)
                    .frame(height: geo.size.height/2)
//                    .frame(width: geo.size.width)
                    .cornerRadius(25.0)
                    .padding(.horizontal)
                //                        .padding(.bottom)
                //                        .background(Color.secondary)
//                Text(self.exhibit.name)
//                    .font(.title)
//                    .bold()
//                    .padding(.leading, 10)
//                    .padding(.trailing, 10)
//                    .padding(.bottom)
                Text(self.exhibit.description)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                Spacer()
                HStack{
                    Spacer()
                    Button(action:{
                        self.showingScienceSheet.toggle()
                    }){
                        Text("About the Science")
                    }
                    Spacer()
                }
                .padding(10)
                
                .sheet(isPresented: self.$showingScienceSheet){
                    TheScienceView(isPresented: self.$showingScienceSheet, exhibit: self.exhibit)
                }
                
                HStack{
                    Spacer()
                    Text("Added \(self.exhibit.year)")
                        .font(.footnote)
                        .padding(10)
                }
            }
            }
        }
//        .navigationBarTitle(Text(exhibit.name), displayMode: .inline)
        .navigationTitle(Text(exhibit.name))
    }
}

struct ExhibitDetailView_Previews: PreviewProvider {
    static let exhibits: [Exhibit] = Bundle.main.decode([Exhibit].self, from: "exhibits.json")
    static var previews: some View {
        ExhibitDetailView(exhibit: exhibits[0])
    }
}
