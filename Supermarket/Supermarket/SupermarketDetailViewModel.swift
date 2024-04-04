//
//  ContentView.swift
//  Supermarket
//
//  Created by Lidia Michela Ambrosanio on 01/04/24.
import SwiftUI

class SupermarketDetailViewModel: ObservableObject {
    @Published var items: [Item] = Items.shared.items
    @Published var cart: [Item] = []
    
    func calculateDiscount(_ itemCount: Int) -> Double {
        switch itemCount {
        case 10..<20:
            return 0.1 // 10% di sconto
        case 20...:
            return 0.15 // 15% di sconto
        default:
            return 0.0
        }
    }
}
