//
//  HideNavigationBarModifier.swift
//  Carwah
//
//  Created by Mona Hammad on 26/9/2020.
//  Copyright © 2020 Mona Hammad. All rights reserved.
//

import SwiftUI

struct HideNavigationBarModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            .navigationBarTitle("")
    }
}
