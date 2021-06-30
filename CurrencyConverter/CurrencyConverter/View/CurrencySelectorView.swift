//
//  ContentView.swift
//  CurrencyConverter
//
//  Created by Mona Hammad on 29/06/2021.
//

import SwiftUI

struct CurrencySelectorView: View {
    @State var loaded = false
    @ObservedObject var viewModel = CurrencySelectorViewModel()
    @ObservedObject var rateService = RateService.instance
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Color.darkBlue.frame(height: 300)
                    Color.white
                }
                VStack {
                    Spacer().frame(height: 45)
                    Image(baseCurrency.lowercased()).resizable().frame(width: 150, height: 150, alignment: .center).cornerRadius(75).padding()
                    Text(baseCurrency).font(.appBold(size: 25)).foregroundColor(.white)
                    Spacer().frame(height: 10)
                    ScrollView {
                        ForEach(rateService.rates, id: \.self) { rate in
                            NavigationLink(destination: CurrencyConverterView(viewModel: CurrencyConverterViewModel(rate: rate))) {
                                HStack{
                                    Image(rate.rateName.lowercased()).resizable().frame(width: 30, height: 30, alignment: .center).cornerRadius(15).padding()
                                    Text(rate.rateName).font(.appMedium(size: 15)).foregroundColor(.appBlack)
                                    Spacer()
                                    Text(rate.rateAmt).padding().font(.appRegular(size: 15)).foregroundColor(.appBlack)
                                }.background(Color.white).cornerRadius(5).padding(.horizontal, 10).padding(.vertical, 5).shadow(radius: 15)
                            }
                         
                        }
                    }
                  
                }
            }.edgesIgnoringSafeArea(.all)

        }
       
        .onAppear(perform: {
            viewModel.getCurrencies()
        })
    }
}

struct CurrencySelectorView_Previews: PreviewProvider {
    static var previews: some View {
        CurrencySelectorView()
    }
}
extension Rates: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(rateName)
    }
    static func == (lhs: Rates, rhs: Rates) -> Bool {
        lhs.rateName == rhs.rateName
    }
    
    
}
