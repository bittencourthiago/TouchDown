//
//  NavgationBarDetailView.swift
//  Touchdown
//
//  Created by PremierSoft on 10/08/21.
//

import SwiftUI

struct NavigationBarDetailView: View {
    //MARK: - Properties
    
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn) {
                    feedBack.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        }//: HStack
    }
}

//MARK: - Preview
struct NavgationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
