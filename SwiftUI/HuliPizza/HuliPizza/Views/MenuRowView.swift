//
//  MenuRowView.swift
//  HuliPizza
//
//  Created by Pedro Silva on 18/05/2023.
//

import SwiftUI

struct MenuRowView: View {
    var item:Int
    var body: some View {
        HStack(alignment:.top,spacing:15) {
            if let image = UIImage(named:"\(item)_sm"){
                Image(uiImage: image)
                    .clipShape(Circle())
                    .padding(.trailing, -20)
                    .padding(.leading, -15)
            }else {
                Image("surfboard_sm")
            }
            VStack(alignment:.leading) {
                Text("Margherita")
                RatingsView(rating: 4)
            }
            Spacer()
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(item: 2)
    }
}
