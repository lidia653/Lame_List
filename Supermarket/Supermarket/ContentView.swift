//
//  ContentView.swift
//  Supermarket
//
//  Created by Lidia Michela Ambrosanio on 01/04/24.
//

import SwiftUI

struct ContentView: View {
    let items: [Item] = [
        Item(name: "Mozzarella", price: 7.0),
        Item(name: "Gelato", price: 3.0),
        Item(name: "Cereali", price: 2.5),
        Item(name: "Petto di Pollo", price: 4.5),
        Item(name: "Manzo", price: 10.0),
        Item(name: "Mortadella", price: 4.5),
        Item(name: "Prosciutto", price: 3.5),
        Item(name: "Pane", price: 1.0),
        Item(name: "Pasta", price: 1.0)
    ]
    
    var body: some View {
        let itemsData = ItemsData(items: items)
        return ItemListView(itemsData: itemsData)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
