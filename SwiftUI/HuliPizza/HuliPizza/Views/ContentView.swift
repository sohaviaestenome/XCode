//
//  ContentView.swift
//  HuliPizza
//
//  Created by Pedro Silva on 18/05/2023.
//

import SwiftUI

struct ContentView: View {
    var orders:[Int] = [1,2,3,4,5]
    var showOrders:Bool = false
    
    var body: some View {
        VStack {
            VStack {
                HeaderView()
                if showOrders{
                    OrderView(orders: orders)
                }else{
                    MenuItemView()
                    MenuView()
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




