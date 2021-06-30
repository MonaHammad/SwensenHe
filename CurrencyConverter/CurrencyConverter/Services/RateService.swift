//
//  RateService.swift
//  CurrencyConverter
//
//  Created by Mona Hammad on 29/06/2021.
//

import Foundation
import Alamofire

class RateService: ObservableObject 
{
    
    static let instance = RateService()
    @Published fileprivate var _rates = [Rates]()
    
    var rates: [Rates]{
        get{
            return _rates
        } set {
            _rates = newValue
        }
        
    }
    
    func downloadRates(completed: @escaping DownloadComplete) {
        
        let url = URL(string: API_URL)
        AF.request(url!).responseData { (response) in
            
            if response.data != nil
            {
                self.rates = Rates.loadRatesFromData(response.data!)
                print(self.rates)
            }
            
            completed()
        }
        
        
    }
    
    
}
