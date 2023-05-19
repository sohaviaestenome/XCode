//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by Pedro Silva on 18/05/2023.
//

import SwiftUI

struct MenuItemView: View {
    @State private var addedItem:Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Margherita Huli Pizza")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.ultraThickMaterial)
                    .padding(.leading)
                    
                    
                
                if let image = UIImage(named:"0X_lg"){
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .padding([.top,.bottom],5)
                        .cornerRadius(15)
                        
                }else {
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                        .rotationEffect(.degrees(180))
                }
            }
            .background(.linearGradient(colors: [Color("Surf"), Color("Sky").opacity(0.1)], startPoint: .leading, endPoint: .trailing), in: Capsule())
            .shadow(color:.teal,radius: 5, x:8,y:8)
            VStack(alignment: .leading) {
               
                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris placerat ipsum nunc, non feugiat lorem auctor eu. Donec malesuada libero libero. Suspendisse luctus eleifend sem, ac malesuada nibh tempus at. Mauris erat lectus, consequat eget mi eu, elementum pharetra erat. Duis eget metus lacus. Mauris molestie pharetra ante, ac pellentesque.")
                        .font(.custom("Georgia",size: 18, relativeTo: .body))
                }
            }
            Button {
                addedItem = true
            } label: {
                Spacer()
                Text(12.99, format:.currency(code:"USD")).bold()
                Image(systemName: addedItem ? "cart.fill.badge.plus" : "cart.badge.plus")
                Spacer()
            }
            .padding()
            .background(.red, in: Capsule())
            .foregroundStyle(.white)
            .padding(5)
 
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView()
    }
}
