//
//  Tales_of_Covarnius_Swift_UIApp.swift
//  Shared
//
//  Created by Erik Mikac on 11/29/21.
//

import SwiftUI

@main
struct Tales_of_Covarnius_Swift_UIApp: App {
    @StateObject var im = ImageModel()
    var body: some Scene {
        
        return WindowGroup {
            
            NavigationView {
                TitleView()
                    .environmentObject(im)
            }
            .navigationBarHidden(true)
            .animation(.none)
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(im)
            
            
        }
    }
}
