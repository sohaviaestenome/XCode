//
//  ContentView.swift
//  HuliPizza
//
//  Created by Pedro Silva on 18/05/2023.
//

import SwiftUI

struct ContentView: View {
    var menu:[MenuItem]
    @State private var orders:[OrderItem] = testOrders
    @State private var showOrders:Bool = true
    
    var body: some View {
        VStack {
            VStack {
                HeaderView()
                    .shadow(radius: 5)
                HStack {
                    Text("\(orders.count) orders")
                    Spacer()
                    Button{
                        showOrders.toggle()
                    } label: {
                        Image(systemName: showOrders ? "cart" : "menucard")
                            
                    }
                }.foregroundStyle(.white).font(.title)
                if showOrders{
                    OrderView(orders: $orders)
                        .cornerRadius(10)
                }else{
                    MenuItemView()
                        .padding(5)
                        .background(.thinMaterial,in: RoundedRectangle(cornerRadius: 10))
                    MenuView(menu: menu)
                }
                
            }
            .padding()
            .background(.linearGradient(colors: [.cyan,Color("Surf"), Color("Sky"),.white], startPoint: .topLeading, endPoint: .bottom))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(menu: MenuModel().menu)
    }
}




