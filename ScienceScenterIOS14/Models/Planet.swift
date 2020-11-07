//
//  Planet.swift
//  ScienceScenter
//
//  Created by Taylor Howard on 6/4/20.
//  Copyright © 2020 Taylor Howard. All rights reserved.
//

import Foundation

struct Planet: Codable, Identifiable, Equatable {
    let id: Int
    let name: String
    let image: String
    let number: Int
    let imageSource: String
    var used: Bool
}

struct Answer: Identifiable{
    let id = UUID()
    let answer: Planet
    let correctAnswer: Planet
    let isCorrect: Bool
}
