//
//  SplitsyApp.swift
//  Splitsy
//
//  Created by Atin Agnihotri on 09/05/21.
//

import SwiftUI

@main
struct SplitsyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear(perform: UIApplication.shared.addTapGestureRecognizer)
        }
    }
}


