//
//  AllCoinsView.swift
//  CryptoApp
//
//  Created by Dariy Kutelov on 19.12.22.
//

import SwiftUI

struct AllCoinsView: View {
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading){
            Text("All Coins")
                .font(.headline)
                .padding()
            
            HStack {
                Text("Coin")
                
                Spacer()
                
                Text("Price")
            }
            .foregroundColor(.gray)
            .font(.caption)
            .padding(.horizontal)
            ScrollView {
                VStack {
                    ForEach(viewModel.coins) { coin in
                        NavigationLink {
                            CoinDetailsView(coin: coin)
                        } label: {
                            CoinCellView(coin: coin)
                        }
                    }
                }
            }
        }
    }
}

//struct AllCoinsView_Previews: PreviewProvider {
//    static var previews: some View {
//        AllCoinsView()
//    }
//}
