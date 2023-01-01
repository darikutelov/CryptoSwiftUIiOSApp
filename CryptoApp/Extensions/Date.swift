//
//  Date.swift
//  CryptoApp
//
//  Created by Dariy Kutelov on 28.12.22.
//

import Foundation

extension Date {
    init(dateAsString: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let date = formatter.date(from: dateAsString) ?? Date()
        self.init(timeInterval: 0, since: date)
    }
}
