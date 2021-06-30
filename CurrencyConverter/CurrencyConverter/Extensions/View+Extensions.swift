//
//  View+Extensions.swift
//  Carwah
//
//  Created by Mona Hammad on 26/9/2020.
//  Copyright © 2020 Mona Hammad. All rights reserved.
//

import SwiftUI

extension View {
    func hideNavigationBar() -> some View {
        modifier(HideNavigationBarModifier())
    }
}
