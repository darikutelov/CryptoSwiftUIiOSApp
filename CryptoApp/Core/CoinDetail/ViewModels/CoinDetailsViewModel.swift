//
//  CoinDetailsViewModel.swift
//  CryptoApp
//
//  Created by Dariy Kutelov on 21.12.22.
//

import Foundation

class CoinDetailsViewModel {
    
    private let coin: Coin
    var chartData = [ChartData]()
    var startDate = Date()
    var endDate = Date()
    var minPrice: Double = 0
    var maxPrice: Double = 0
    var xAxisValues = [Date]()
    var yAxisValues = [Double]()
    var coinName: String
    
    var overviewSectionModel: CoinDetailSectionModel {
        let price = coin.currentPrice.toCurrency()
        let pricePercentChange = coin.priceChangePercentage24HInCurrency
        let priceStats = StatisticModel(title: "Current Price",
                                        value: price,
                                        percentageChange: pricePercentChange)
        
        let marketCap = coin.marketCap ?? 0
        let marketCapPercentChange = coin.marketCapChangePercentage24H
        let marketCapStat = StatisticModel(title: "Market Capitalization",
                                           value: String(marketCap),
                                           percentageChange: marketCapPercentChange)
        
        let rank = coin.marketCapRank
        let rankStat = StatisticModel(title: "Rank",
                                      value: "\(rank)",
                                      percentageChange: nil)
        
        let volume = coin.totalVolume ?? 0
        let volumeStat = StatisticModel(title: "Volume",
                                        value: "\(String(describing: volume))",
                                        percentageChange: nil)
        
        return CoinDetailSectionModel(title: "Overview", stats: [priceStats,
                                                                 marketCapStat,
                                                                 rankStat,
                                                                 volumeStat])
    }
    
    var additionalDetailsSectionModel: CoinDetailSectionModel {
        let high = coin.high24H?.toCurrency() ?? "N/A"
        let highStat = StatisticModel(title: "24H High",
                                      value: high,
                                      percentageChange: nil)
        
        let low = coin.low24H?.toCurrency() ?? "N/A"
        let lowStat = StatisticModel(title: "24H Low",
                                     value: low,
                                     percentageChange: nil)
        
        let priceChange24H = coin.priceChange24H.toCurrency()
        let percentChange24H = coin.priceChangePercentage24H
        let priceChangeStat = StatisticModel(title: "24H Price Change",
                                             value: priceChange24H,
                                             percentageChange: percentChange24H)
        
        let marketCapChange = coin.marketCapChange24H?.toCurrency() ?? "N/A"
        let marketChangePercent = coin.marketCapChangePercentage24H
        let marketStat = StatisticModel(title: "24H Market Cap Change",
                                        value: marketCapChange,
                                        percentageChange: marketChangePercent)
        
        return CoinDetailSectionModel(title: "Additional Details", stats: [highStat,
                                                                           lowStat,
                                                                           priceChangeStat,
                                                                           marketStat])
    }
    
    init(coin: Coin) {
        self.coin = coin
        self.coinName = coin.name
        self.configureChartData()
    }
    
    func configureChartData() {
        coinName = coin.name
        
        guard let priceData = coin.sparklineIn7D?.price else { return }
        var index = 0
        self.minPrice = priceData.min()!
        self.maxPrice = priceData.max()!
        self.endDate = Date(dateAsString: coin.lastUpdated ?? "")
        self.startDate = endDate.addingTimeInterval(-7 * 60 * 60 * 24)
        self.yAxisValues = [minPrice, (minPrice + maxPrice) / 2, maxPrice]
        self.xAxisValues = [startDate, endDate]
        
        for price in priceData.reversed() {
            let date = self.endDate.addingTimeInterval(-1 * 60 * 60 * Double(index))
            let chartDataItem = ChartData(date: date, value: price)
            self.chartData.append(chartDataItem)
            index += 1
        }
    }
}
