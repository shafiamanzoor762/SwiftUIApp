//
//  View+Extensions.swift
//  SwiftUIApp
//
//  Created by apple on 21/10/2024.
//

import SwiftUI

extension View {
    /// Custom spacers
    @ViewBuilder
    func hSpacing(_ alignment: Alignment) -> some View{
        self
            .frame(maxWidth: .infinity, alignment: alignment)
    }

    @ViewBuilder
    func vSpacing(_ alignment: Alignment) -> some View{
        self
            .frame(maxHeight: .infinity, alignment: alignment)
    }
    
    ///Checking two date are same
    func isSameDate(_ date1: Date, _ date2: Date) -> Bool {
        return Calendar.current.isDate(date1, inSameDayAs: date2)
    }
}
