//
//  Color+Utilities.swift
//  Journey
//
//  Created by Joseph  DeWeese on 2/13/23.
//

import Foundation
import SwiftUI

extension Color {
    
    
    init(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat) {
        self.init(red: red / 255.0, green:  green / 255.0  , blue:  blue / 255.0 )
    }
}
