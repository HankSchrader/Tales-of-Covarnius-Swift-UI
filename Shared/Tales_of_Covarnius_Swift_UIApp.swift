//
//  Tales_of_Covarnius_Swift_UIApp.swift
//  Shared
//
//  Created by Erik Mikac on 11/29/21.
//

import SwiftUI

@main
struct Tales_of_Covarnius_Swift_UIApp: App {
    var body: some Scene {
        
        return WindowGroup {
            
            NavigationView {
                
                
                TitleView()
            }
            .navigationBarHidden(true)
            
            .animation(.none)
            .navigationViewStyle(StackNavigationViewStyle())
            
            
        }
    }
}
