//
//  ContentView.swift
//  Shared
//
//  Created by Erik Mikac on 11/29/21.
//

import SwiftUI


struct ContentView: View {
    var startingViewName: String
    var startingImage: String
    let defaults = UserDefaults.standard
    let vnc = ViewNavigationController()

    init() {
        self.startingViewName = Part_1_Intro.PageName
        self.startingImage = UserDefaults.standard.string(forKey: DefaultsKeys.currentPicture) ?? ""
        
        let startingViewOptional = UserDefaults.standard.string(forKey: DefaultsKeys.currentPage)
        if let v = startingViewOptional {
            self.startingViewName = v
        }
    }
    var body: some View {
        self.vnc.routeDecision(choice: self.startingViewName)
    }
        
}


