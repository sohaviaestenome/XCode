//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by Pedro Silva on 18/05/2023.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack {
            if let image = UIImage(named:"0_lg"){
                Image(uiImage: image)
                    .cornerRadius(10)
            }else {
                Image("surfboard_lg")
            }
            VStack(alignment: .leading) {
                Text("Margherita")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("Surf"))
                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris placerat ipsum nunc, non feugiat lorem auctor eu. Donec malesuada libero libero. Suspendisse luctus eleifend sem, ac malesuada nibh tempus at. Mauris erat lectus, consequat eget mi eu, elementum pharetra erat. Duis eget metus lacus. Mauris molestie pharetra ante, ac pellentesque.")
                        .font(.custom("Georgia",size: 18, relativeTo: .body))
                }
            }

            
                
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView()
    }
}
