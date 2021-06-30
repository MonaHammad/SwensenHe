//
//  Constants.swift
//  CurrencyConverter
//
//  Created by Mona Hammad on 29/06/2021.
//

import Foundation

typealias DownloadComplete = () -> ()
extension NSNotification {
    static let dataDownloaded = NSNotification.Name("dataDownloaded")
}


var API_KEY = "e630526fec50cb95dd95646bf2377ecf"
var API_URL = "http://data.fixer.io/api/latest?access_key=\(API_KEY)"
var API_URL_FULL_FORM = "http://data.fixer.io/api/symbols?access_key=\(API_KEY)"
var FULL_FORM = [String : String]()
var count = 0
var baseCurrency = "EUR"
var baseCurrencyValue : Double!
var updatedTime = Double()
