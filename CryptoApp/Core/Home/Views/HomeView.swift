//
//  HomeView.swift
//  CryptoApp
//
//  Created by Dariy Kutelov on 18.12.22.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    //NB: Envoke only on top level and pass down
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical,
                       showsIndicators: false) {
     
                TopMoversView(viewModel: viewModel)
                
                Divider()
                
                AllCoinsView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
