//
//  Font+Extension.swift
//  Carwah
//
//  Created by Mona Hammad on 24/9/2020.
//  Copyright © 2020 Mona Hammad. All rights reserved.
//

import SwiftUI

extension Font {
    static func appRegular(size: CGFloat) -> Font {
         Font.custom("Roboto-Regular", size: size)
    }

    static func appMedium(size: CGFloat) -> Font {
        Font.custom("Roboto-Medium", size: size)
    }
    
    static func appBold(size: CGFloat) -> Font {
        Font.custom("Roboto-Bold", size: size)
    }
}
