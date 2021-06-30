//
//  CurrencyConverterViewModel.swift
//  CurrencyConverter
//
//  Created by Mona Hammad on 30/06/2021.
//

import SwiftUI
class CurrencyConverterViewModel: ObservableObject {
    
    @Published var rate: Rates
    @Published var converted: String
    @Published var amount: String = "1.0" {
        didSet {
            let amountDouble = Double(amount)
            let rateDouble = Double(rate.rateAmt)
            if let amountDouble = amountDouble, let rateDouble = rateDouble {
                converted = "\(String(format: "%0.2f",(amountDouble * rateDouble)))"
            } else {
                converted = "0"
            }
        }
    }
    init(rate: Rates) {
        self.rate = rate
        converted = rate.rateAmt
    }
}
