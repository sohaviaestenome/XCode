//
//  ContentView.swift
//  HuliPizza
//
//  Created by Pedro Silva on 18/05/2023.
//

import SwiftUI

struct ContentView: View {
    var orders:[Int] = [1,2,3,4,5]
    var showOrders:Bool = true
    
    var body: some View {
        VStack {
            VStack {
                HeaderView()
                    .shadow(radius: 5)
                if showOrders{
                    OrderView(orders: orders)
                        .cornerRadius(10)
                }else{
                    MenuItemView()
                        .padding(5)
                        .background(.thinMaterial,in: RoundedRectangle(cornerRadius: 10))
                    MenuView()
                }
                
            }
            .padding()
            .background(.linearGradient(colors: [.cyan,Color("Surf"), Color("Sky"),.white], startPoint: .topLeading, endPoint: .bottom))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




