//
//  ContentView.swift
//  Splitsy
//
//  Created by Atin Agnihotri on 09/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var totalAmountText: String = ""
    @State private var count: Int = 0
    @State private var tipCount: Int = 0
    
    let tipAmount = [0, 5, 10, 15, 20, 25]
    
    var totalAmountAfterTip: Double {
        guard let totalAmount = Double(totalAmountText) else {
            return 0
        }
        return totalAmount * (1 + Double(tipAmount[tipCount])/100)
    }
    
    var split: Double {
        guard totalAmountAfterTip != 0 else {
            return 0
        }
        return totalAmountAfterTip / (Double(count) + 2) // As 2 People is at index 0 of the
    }
    
    
    /*
     some View. This means it will return something that conforms to the View protocol, but that extra some keyword adds an important restriction: it must always be the same kind of view being returned – you can’t sometimes return one type of thing and other times return a different type of thing.
     */
    var body: some View {
        NavigationView {
            Form {
                // Total Amount and Number of People
                Section {
                    TextField("Amount", text: $totalAmountText)
                        .keyboardType(.decimalPad)
                    Picker("Number of People", selection: $count) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                // Tip Percentage
                Section(header: Text("How much tip do you want to leave")
                                    .textCase(nil)){
                    
                    Picker ("Select Tip Amount", selection: $tipCount){
                        ForEach (0 ..< tipAmount.count) {
                            Text("\(tipAmount[$0])%")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                
                // Total Amount
                AmountView(headerText: "Total amount after tip", amount: totalAmountAfterTip)
                
                // Split Amount
                AmountView(headerText: "Amount per person", amount: split)

            }
            .navigationBarTitle("Splitsy")
        }
        
    }
    
}

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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
