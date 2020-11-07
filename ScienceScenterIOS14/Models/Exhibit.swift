//
//  Exhibit.swift
//  ScienceScenter
//
//  Created by Taylor Howard on 6/3/20.
//  Copyright © 2020 Taylor Howard. All rights reserved.
//

import Foundation

struct Exhibit: Codable, Identifiable, Hashable {
    let id: Int
    let name: String
    let topic: Int
    let description: String
    let year: String
    let image: [String]
    let video: String?
    let science: String
}



