//
//  Items.swift
//  Supermarket
//
//  Created by Lidia Michela Ambrosanio on 01/04/24.
//

import Foundation

struct Item: Identifiable {
    var id = UUID()
    var name: String
    var price: Double
}
