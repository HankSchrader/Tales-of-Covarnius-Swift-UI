//
//  Tales_of_Covarnius_Swift_UIApp.swift
//  Shared
//
//  Created by Erik Mikac on 11/29/21.
//

import SwiftUI

@main
struct Tales_of_Covarnius_Swift_UIApp: App {

    @StateObject var log = ChapterLog()
    var startingView: String
    let defaults = UserDefaults.standard
    init() {
        self.startingView = "Part_1_Intro"
        let startingViewOptional = UserDefaults.standard.string(forKey: DefaultsKeys.currentPage)
        if let v = startingViewOptional {
            self.startingView = v
            print(self.startingView)
        }
    
    }

    
    var body: some Scene {
        print(self.startingView)

        return WindowGroup {
            NavigationView {
                
                subviews[self.startingView]
                    .environmentObject(log)
            }
            .navigationViewStyle(StackNavigationViewStyle())
        
        }
    }
}
