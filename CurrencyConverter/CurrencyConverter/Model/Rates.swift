//
//  Rates.swift
//  CurrencyConverter
//
//  Created by Mona Hammad on 29/06/2021.
//

import Foundation
import SwiftyJSON

class Rates {
    
    fileprivate var _rateName: String!
    fileprivate var _rateAmt: String!
    fileprivate var _rateFullForm: String!
    fileprivate var _USDAmt: String!
    
    var rateName: String {
        get{
            return _rateName
        } set {
            _rateName = newValue
        }
    }
    var rateAmt: String {
        get{
            return _rateAmt
        } set {
            _rateAmt = newValue
        }
    }
    var rateFullForm: String {
        get{
            return _rateFullForm
        } set {
            _rateFullForm = newValue
        }
    }
    var USDAmt: String {
        get{
            return _USDAmt
        } set {
            _USDAmt = newValue
        }
    }
    
    class func loadRatesFromData(_ APIData: Data) -> [Rates]{
    
        var rates = [Rates]()
        var baseAmt : Double!
        let json = try! JSON(data: APIData)
        updatedTime = json["timestamp"].doubleValue
        if let list = json["rates"].dictionary{
            let sortedList = list.sorted(by: <)
            for (key, value) in sortedList
            {
                let newRates = Rates()
                baseAmt = list[baseCurrency]?.doubleValue
                baseCurrencyValue = baseAmt
                newRates.rateAmt = "\(String(format: "%0.2f",(Double(value.doubleValue) / baseAmt)))"
                
                newRates.rateName = "\(key)"
                if FULL_FORM.count != 0
                {
                    newRates.rateFullForm = FULL_FORM["\(key)"]!
                }else {
                    newRates.rateFullForm = ""
                }
                
                rates.append(newRates)
            }
        }
        return rates
    }
    

    
}
