//
//  Tales_of_Covarnius_Swift_UIApp.swift
//  Shared
//
//  Created by Erik Mikac on 11/29/21.
//

import SwiftUI

@main
struct Tales_of_Covarnius_Swift_UIApp: App {

   
    var startingView: String
    let defaults = UserDefaults.standard
    init() {
        self.startingView = "Part_1_Intro"
        UserDefaults.standard.set("Part_1_Intro", forKey: DefaultsKeys.currentPage)
        
        let startingViewOptional = UserDefaults.standard.string(forKey: DefaultsKeys.currentPage)
        if let v = startingViewOptional {
            self.startingView = v
        }
    }

    
    var body: some Scene {

        return WindowGroup {
            NavigationView {
                
                subviews[self.startingView]
                  
            }
            .navigationViewStyle(StackNavigationViewStyle())
        
        }
    }
}
