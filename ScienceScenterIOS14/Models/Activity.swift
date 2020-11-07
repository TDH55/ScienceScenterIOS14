//
//  Activity.swift
//  ScienceScenter
//
//  Created by Taylor Howard on 6/4/20.
//  Copyright © 2020 Taylor Howard. All rights reserved.
//

import Foundation

struct ActivityCategories: Codable, Identifiable {
    struct Activity: Codable, Identifiable{
        let id: Int
        let name: String
        let image: String
        let description: String
        let link: String
    }
    let id: Int
    let name: String
    let activities: [Activity]
}
