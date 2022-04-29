//
//  CineCell.swift
//  KitCine
//
//  Created by Dylan Caetano on 28/04/2022.
//

import Foundation

struct CineCell {
    let image: URL?
    let title: String
    let description: String
    let poster: [Poster]
    let genres: [String]
    let casting: [Actor]
    let rating: Float
}
