//
//  ChartData.swift
//  CryptoApp
//
//  Created by Dariy Kutelov on 28.12.22.
//

import Foundation

struct ChartData: Identifiable {
    let id = UUID().uuidString
    let date: Date
    let value: Double
}
