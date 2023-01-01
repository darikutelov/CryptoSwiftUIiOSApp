//
//  CoinDetailsView.swift
//  CryptoApp
//
//  Created by Dariy Kutelov on 21.12.22.
//

import SwiftUI

struct CoinDetailsView: View {
    
    let viewModel: CoinDetailsViewModel
    
    init(coin: Coin) {
        self.viewModel = CoinDetailsViewModel(coin: coin)
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Coin Details")
                
                ChartView(viewModel: viewModel)
                    .frame(height: 250)
                    .padding(.vertical)
                
                CoinDetailsSection(model: viewModel.overviewSectionModel)
                
                CoinDetailsSection(model: viewModel.additionalDetailsSectionModel)
            }
            .padding()
        }
        .navigationTitle(viewModel.coinName)
        .navigationBarTitleDisplayMode(.large)
    }
}

struct CoinDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CoinDetailsView(coin: dev.coin)
    }
}
