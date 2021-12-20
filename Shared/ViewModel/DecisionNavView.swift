//
//  NavigationView.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/19/21.
//

import SwiftUI

struct DecisionNavView: View {
    var choice = ""
    var decision = ""
    let defaults = UserDefaults.standard
    var isBackButtonShown = true
    @State private var showingAlert = false
    ///isSecondChoice() || isGameOver()
    init (decision: String, choice: String, isBackButtonShown: Bool) {
        self.decision = decision
        self.choice = choice
        self.isBackButtonShown = isBackButtonShown
    }
    var body: some View {
        NavigationLink(destination: subviews[choice]
                        .navigationBarBackButtonHidden(isBackButtonShown)) {
            
            Text(decision)
                .padding()
                .alert("\(Constants.chapterMap[choice]?.chapterTitle ?? "") Unlocked!", isPresented: self.$showingAlert) {
                    Text("Awesome!")
                }
            
        }.simultaneousGesture(TapGesture().onEnded{
        
            if Constants.chapters.contains(choice) {
                let chapterOptional = UserDefaults.standard.array(forKey: DefaultsKeys.unlockedChapters)
                
                if let chapterOptional = chapterOptional {
                    var chapters = chapterOptional
                    chapters.append(choice)
                    defaults.set(chapters, forKey: DefaultsKeys.unlockedChapters)
                }
            }
            
            // MARK: If it is a gameover, then reset user defaults. Otherwise save the current page.
            if decision == Constants.GameOverPhrase {
                UserDefaults.standard.set(Part_1_Intro.PageName, forKey: DefaultsKeys.currentPage)
            } else {
                defaults.set(choice, forKey: DefaultsKeys.currentPage)
            }
            
        })
            .onDisappear{
                // Shows a chapter unlocked alert if their decision leads them to a new chapter.
                if Constants.chapters.contains(choice) == true  {
                    constructAndStoreChapter(currentPageView: choice)
                    self.showingAlert = true
                    
                }

               
            }
        
            .padding()
    }
}

struct DecisionNavView_Previews: PreviewProvider {
    static var previews: some View {
        DecisionNavView(decision: "", choice: "", isBackButtonShown: true)
    }
}

private func constructAndStoreChapter(currentPageView: String) -> Void {
    
    // This can be force unwrapped because Part_1_Intro will always be in the Unlocked Chapters array by this point.
    let currentlyUnlockedChapters = UserDefaults.standard.array(forKey: DefaultsKeys.unlockedChapters) as! [String]?
    if let currentlyUnlockedChapters = currentlyUnlockedChapters {
        let chapters: [String] = currentlyUnlockedChapters
        // Convert to set to rem dups.
        let chapts = Array(Set(chapters.map { $0 }))
        UserDefaults.standard.set(chapts, forKey: DefaultsKeys.unlockedChapters)
        
    }
    
}
