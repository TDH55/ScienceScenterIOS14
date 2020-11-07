//
//  ContentView.swift
//  ScienceScenterIOS14
//
//  Created by Taylor Howard on 6/25/20.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Int = 3
    var body: some View {
        TabView(selection: $selection){
            ActivitiesList()
                .tabItem{
                    Image(systemName: "gamecontroller")
                    Text("Activities")
                }
                .tag(1)
            ExhibitList()
                .tabItem{
                    Image(systemName: "line.horizontal.3")
                    Text("Exhibits")
                }
                .tag(2)
            Home()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(3)
            ResourceList()
                .tabItem{
                    Image(systemName: "book")
                    Text("Resources")
                }
                .tag(4)
            Text("About")
                .tabItem{
                    Image(systemName: "line.horizontal.3")
                    Text("About")
                }
                .tag(5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
