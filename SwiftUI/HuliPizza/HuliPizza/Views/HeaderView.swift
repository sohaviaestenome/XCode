//
//  HeaderView.swift
//  HuliPizza
//
//  Created by Pedro Silva on 18/05/2023.
//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var orders:OrderModel
    @Environment(\.verticalSizeClass) var vSizeClass:UserInterfaceSizeClass?
    var body: some View {
        VStack {
            if(vSizeClass ?? .regular) != .compact {
            ZStack(alignment: .bottomTrailing) {
                Image("surfBanner")
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
                Text("Huli Pizza Company")
                    .font(.custom("Georgia", size:30, relativeTo: .title))
                    .foregroundStyle(.regularMaterial)
                    .fontWeight(.semibold)
            }
            }else{
                HStack(alignment: .bottom ){
                    Image("surfBanner")
                        .resizable()
                        .scaledToFit()
                        .ignoresSafeArea()
                    Text("Huli Pizza Company")
                        .font(.custom("Georgia", size:30, relativeTo: .title))
                        .foregroundColor(Color("Surf"))
                        .fontWeight(.heavy)
                }
            }

        }
        .background(.ultraThinMaterial)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView().environmentObject(OrderModel())
    }
}
