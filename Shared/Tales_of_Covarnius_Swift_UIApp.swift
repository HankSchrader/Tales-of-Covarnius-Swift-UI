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
    var body: some Scene {
        WindowGroup {
            NavigationView {
                Part_1_Intro()

                    .environmentObject(log)
          
            }
            .navigationViewStyle(StackNavigationViewStyle())
        
        }
    }
}
