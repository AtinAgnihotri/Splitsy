//
//  AmountView.swift
//  Splitsy
//
//  Created by Atin Agnihotri on 17/05/21.
//

import SwiftUI

// A custom view to display amount in Forms
struct AmountView: View {
    var headerText: String
    var amount: Double
    
    init(headerText: String, amount: Double) {
        self.headerText = headerText
        self.amount = amount
    }
    
    var body: some View {
        Section (header: Text(headerText)
                            .textCase(nil)){
            Text("\(amount, specifier: "%.2f")")
        }
    }
}
