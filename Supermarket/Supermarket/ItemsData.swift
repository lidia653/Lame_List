//
//  ItemsData.swift
//  Supermarket
//
//  Created by Lidia Michela Ambrosanio on 01/04/24.
//
import Foundation

class ItemsData: ObservableObject {
    @Published var items: [Item]
    
    init(items: [Item]) {
        self.items = items
    }
}
