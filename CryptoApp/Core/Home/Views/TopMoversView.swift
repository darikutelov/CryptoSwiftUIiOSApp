//
//  TopMoversView.swift
//  CryptoApp
//
//  Created by Dariy Kutelov on 18.12.22.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Movers")
                .font(.headline)
            ScrollView(.horizontal) {
                HStack(spacing: 12) {
                    ForEach(viewModel.topMovingCoins) { coin in
                        NavigationLink {
                            CoinDetailsView(coin: coin)
                        } label: {
                            TopMoversItemView(coin: coin)
                        }
                    }
                }
            }
        }
        .padding()
    }
}

struct TopMoversView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversView(viewModel: HomeViewModel())
    }
}
