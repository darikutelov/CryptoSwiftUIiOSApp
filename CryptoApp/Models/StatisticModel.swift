//
//  StatisticModel.swift
//  CryptoApp
//
//  Created by Dariy Kutelov on 21.12.22.
//

import Foundation

struct StatisticModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
}
