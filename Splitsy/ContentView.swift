//
//  ContentView.swift
//  Splitsy
//
//  Created by Atin Agnihotri on 09/05/21.
//

import SwiftUI

struct ContentView: View {
    
//    @State private var totalAmount: Double = 0
    @State private var totalAmountText: String = ""
    @State private var count: Int = 0
    @State private var tipCount: Int = 0
    @State private var split: Double = 0
    let tipAmount = [0, 5, 10, 15, 20, 25]
    /*
     some View. This means it will return something that conforms to the View protocol, but that extra some keyword adds an important restriction: it must always be the same kind of view being returned – you can’t sometimes return one type of thing and other times return a different type of thing.
     */
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter total amount", text: $totalAmountText)
                        .keyboardType(.decimalPad)
                    Picker("Number of People", selection: $count) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }
                Section {
                    Picker ("Select Tip Amount", selection: $tipCount){
                        ForEach (0 ..< tipAmount.count) {
                            Text("\(tipAmount[$0])%")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section {
                    Button("Split!") {
                        calcuateSplit()
                    }
                }
                Section {
                    Text(String(format: "Your split is %.2f", split))
                }
            }
            .navigationBarTitle("Splitsy")
        }
        
    }
    
    func calcuateSplit() {
        guard let totalAmount = Double(totalAmountText) else {
            totalAmountText = ""
            split = 0
            return
        }
        let totalTippedAmount = totalAmount * ( 1 + (Double(tipAmount[tipCount]) / 100.0))
        split = totalTippedAmount / Double(count + 2)
        print("totalTippedAmount: \(totalTippedAmount), split: \(split)")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
