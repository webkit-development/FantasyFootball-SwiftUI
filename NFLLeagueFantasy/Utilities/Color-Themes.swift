//
//  Color-Themes.swift
//  CFB
//
//  Created by Kevin Stradtman on 4/3/22.
//

import Foundation
import SwiftUI

extension ShapeStyle where Self == Color {
    static var darkBackground: Color {
        Color(red: 0.1, green: 0.1, blue: 0.2)
    }
    static var lightBackground: Color {
        Color(red: 0.2, green: 0.2, blue: 0.3)
    }
    static var darkenedWhiteText: Color {
        Color(red: 0.65, green: 0.65, blue: 0.65)
    }
}
