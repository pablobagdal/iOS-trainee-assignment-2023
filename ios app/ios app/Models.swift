//
//  Models.swift
//  ios app
//
//  Created by Pavel Bagdalov on 24.08.2023.
//

import Foundation

struct Result: Codable
{
    let advertisements: [ResultItem]
}
struct ResultItem: Codable
{
    let id: String
    let title: String
    let price: String
    let location: String
    let image_url: String
    let created_date: String
}

