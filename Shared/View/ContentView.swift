//
//  ContentView.swift
//  Shared
//
//  Created by Erik Mikac on 11/29/21.
//

import SwiftUI


struct ContentView: View {
    var startingView: String
    let defaults = UserDefaults.standard
    init() {
        self.startingView = Part_1_Intro.PageName
 
        
        let startingViewOptional = UserDefaults.standard.string(forKey: DefaultsKeys.currentPage)
        if let v = startingViewOptional {
            self.startingView = v
        }
    }
    var body: some View {
            subviews[self.startingView]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
