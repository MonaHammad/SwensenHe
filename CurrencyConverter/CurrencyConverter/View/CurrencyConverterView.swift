//
//  CurrencyConverterView.swift
//  CurrencyConverter
//
//  Created by Mona Hammad on 30/06/2021.
//

import SwiftUI
struct CurrencyConverterView: View {
    @ObservedObject var viewModel: CurrencyConverterViewModel
    var body: some View {
        ZStack {
            Color.darkBlue
            VStack {
                Spacer().frame(height: 50)
                HStack {
                    TextField("", text: $viewModel.amount).multilineTextAlignment(.trailing)
                        .keyboardType(.numberPad).frame(minWidth: 0, idealWidth: 20, maxWidth: .infinity, alignment: .trailing).font(.appMedium(size: 40)).foregroundColor(.white)
                    Text(baseCurrency).font(.appMedium(size: 40)).foregroundColor(.white)
                }
                
                Rectangle().frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity, minHeight: 1, idealHeight: 1, maxHeight: 1, alignment: .center).foregroundColor(.lightBlue)
                
                HStack {
                    Text(viewModel.converted).frame(minWidth: 0, idealWidth: 20, maxWidth: .infinity, alignment: .trailing).font(.appMedium(size: 40)).foregroundColor(.white)

                    Text(viewModel.rate.rateName).font(.appMedium(size: 40)).foregroundColor(.white)
                }
                
                Spacer()
            }.padding()
        }
        .hideNavigationBar().edgesIgnoringSafeArea(.all)
    }
}
