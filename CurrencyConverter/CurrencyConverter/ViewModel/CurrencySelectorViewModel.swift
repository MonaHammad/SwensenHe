//
//  BaseCurrencySelectorViewModel.swift
//  CurrencyConverter
//
//  Created by Mona Hammad on 29/06/2021.
//

import SwiftUI

class CurrencySelectorViewModel: ObservableObject {    
    func getCurrencies() {
        RateService.instance.downloadRates(completed: {
            print("data downloaded")
            NotificationCenter.default.post(name: NSNotification.dataDownloaded, object: nil)
        })
    }
}
