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
    let startingView: String
    let defaults = UserDefaults.standard
    init() {
  
        self.startingView = UserDefaults.standard.string(forKey: DefaultsKeys.currentPage)!
        print(self.startingView)

    }

    
    var body: some Scene {


        return WindowGroup {
            NavigationView {
                subviews[startingView]
                    .environmentObject(log)
            }
            .navigationViewStyle(StackNavigationViewStyle())
        
        }
    }
}
