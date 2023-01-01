//
//  ChartView.swift
//  CryptoApp
//
//  Created by Dariy Kutelov on 28.12.22.
//

import SwiftUI
import Charts

struct ChartView: View {
    let viewModel: CoinDetailsViewModel
    
    var body: some View {
        if #available(iOS 16.0, *) {
            Chart {
                ForEach(viewModel.chartData) {item in
                    LineMark(
                        x: .value("Date", item.date),
                        y: .value("Price", item.value)
                    )
                    .interpolationMethod(.cardinal)
                }
            }
            .chartXScale(domain: ClosedRange(uncheckedBounds: (lower: viewModel.startDate, upper: viewModel.endDate)))
            .chartXAxis {
                AxisMarks(position: .bottom, values: viewModel.xAxisValues)
            }
            .chartYScale(domain: ClosedRange(uncheckedBounds: (lower: viewModel.minPrice, upper: viewModel.maxPrice)))
            .chartYAxis {
                AxisMarks(position: .leading, values: viewModel.yAxisValues)
            }
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(viewModel: CoinDetailsViewModel(coin: dev.coin))
    }
}
