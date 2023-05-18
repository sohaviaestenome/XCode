//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Pedro Silva on 18/05/2023.
//

import SwiftUI

struct OrderRowView: View {
    var order:Int 
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Text("Your order item \(order)")
            Spacer()
            Text(19.90, format: .currency(code: "USD"))
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(order: 1)
    }
}
