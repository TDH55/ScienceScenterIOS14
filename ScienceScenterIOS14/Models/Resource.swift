//
//  Resource.swift
//  ScienceScenter
//
//  Created by Taylor Howard on 6/3/20.
//  Copyright © 2020 Taylor Howard. All rights reserved.
//

import Foundation

struct categories: Codable, Identifiable {
    struct Resource: Codable, Identifiable{
        let id: Int
        let name: String
        let description: String
        let link: String
        let image: String?
    }
    let id: Int
    let name: String
    let resources: [Resource]
}
