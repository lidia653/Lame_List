//
//  ItemListView.swift
//  Supermarket
//
//  Created by Lidia Michela Ambrosanio on 01/04/24.
//
import SwiftUI

struct ItemListView: View {
    @ObservedObject var itemsData: ItemsData
    @State private var searchText = ""
    @State private var cartItems: [Item] = []
    
    var filteredItems: [Item] {
        if searchText.isEmpty {
            return itemsData.items
        } else {
            return itemsData.items.filter { $0.name.range(of: searchText, options: .caseInsensitive) != nil }
        }
    }
    
    var body: some View {
        VStack {
            TextField("Cerca...", text: $searchText)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            List(filteredItems) { item in
                HStack {
                    Text(item.name)
                    Spacer()
                    Text(String(format: "%.2f€", item.price))
                    Button(action: {
                        self.addToCart(item: item)
                    }) {
                        Text("+")
                    }
                }
            }
            Divider()
            Text("Carrello")
            CartItemsListView(cartItems: cartItems)
            Text("Prezzo totale: \(String(format: "%.2f€", totalPrice()))")
        }
        .padding()
    }
    
    func addToCart(item: Item) {
        cartItems.append(item)
    }
    
    func totalPrice() -> Double {
        return cartItems.reduce(0) { $0 + $1.price }
    }
}

struct CartItemsListView: View {
    let cartItems: [Item]
    
    var body: some View {
        List(cartItems) { item in
            HStack {
                Text(item.name)
                Spacer()
                Text(String(format: "%.2f€", item.price))
            }
        }
    }
}


struct ItemListView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
