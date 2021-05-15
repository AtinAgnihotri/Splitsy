//
//  ContentView.swift
//  Splitsy
//
//  Created by Atin Agnihotri on 09/05/21.
//

import SwiftUI

struct ContentView: View {
    /*
     some View. This means it will return something that conforms to the View protocol, but that extra some keyword adds an important restriction: it must always be the same kind of view being returned – you can’t sometimes return one type of thing and other times return a different type of thing.
     */
    var body: some View {
        NavigationView {
            // SwiftUI entertains upto 10 children per view
            Form {
                Section {
                    Text("Hello, world!")
                        .padding()
                    Text("Hello, world!")
                        .padding()
//                    Text("Hello, world!")
//                        .padding()
//                    Text("Hello, world!")
//                        .padding()
//                    Text("Hello, world!")
//                        .padding()
//                    Text("Hello, world!")
//                        .padding()
//                    Text("Hello, world!")
//                        .padding()
//                    Text("Hello, world!")
//                        .padding()
//                    Text("Hello, world!")
//                        .padding()
//                    Text("Hello, world!")
//                        .padding()
//                    Text("Hello, world!")
//                        .padding()
                }
//                Section {
//                Text("Hello, world!")
//                    .padding()
//                Text("Hello, world!")
//                    .padding()
//                Text("Hello, world!")
//                    .padding()
//
//                }
            }
//            .navigationBarTitle(Text("SwiftUI"), displayMode: .inline)
            // Modifiers are regular methods with one small difference: they always return a new instance of whatever you use them on.
            .navigationBarTitle("Splitsy")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
