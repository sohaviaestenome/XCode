//
//  ContentView.swift
//  HuliPizza
//
//  Created by Pedro Silva on 18/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    var orders: [Int] = [1,2,3,4,5]
    var body: some View {
        VStack {
            VStack {
                
                
                
                ZStack {
                    Image("surfBanner")
                        .resizable()
                        .scaledToFit()
                    Text("Huli Pizza Company")
                        .background()
                }
                Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
                HStack {
                    
                    Text("Order Pizza")
                        .font(.title)
                    Spacer()
                }
                ScrollView{
                    ForEach(orders, id:\.self) {order in
                        HStack(alignment: .firstTextBaseline) {
                            Text("Your order item \(order)")
                            Spacer()
                            Text(19.90, format: .currency(code: "USD"))
                        }
                    }
                }
                VStack {
                    Image(systemName:   "rectangle.fill").font(.largeTitle)
                    Text("Margherita")
                    Text("Description")
                }
                ScrollView{
                    ForEach(1...25, id:\.self) {item in
                        HStack(alignment:.top,spacing:15) {
                            Image(systemName:"\(item).circle.fill").font(.largeTitle)
                            VStack(alignment:.leading) {
                                Text("Margherita")
                                Text("Description")
                            }
                        }
                    }
                    Spacer()
                }

            }
            .padding()
                    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
