//
//  BaseView.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/16/21.
//

import SwiftUI

struct BaseView: View {
    @State var showingAlertDecision1 = false
    @State var showingAlertDecision2 = false
    @State var showingAlertDecision3 = false
    @State private var opacity = 0.0
    var view: StoryPayload
    let defaults = UserDefaults.standard
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    let errorMsg = "Something Went Wrong."
    init(view: StoryPayload) {
        self.view = view
    }
    
    var body: some View {
        var userDecision = ""
        let isSecondChoice = {
            self.view.decision2 != ""
        }
        let allChapters = Constants.chapters
        let isThirdChoice = {
            self.view.decision3 != ""
        }
        let isGameOver = {
            self.view.decision1 == Constants.GameOverPhrase
        }
        
        VStack {
            ZStack {
                ScrollView {
                    Text(view.text)
                    
                        .fontWeight(.light)
                        .if(isIPad) {
                            view in
                            view.font(.system(size: CGFloat(Constants.ipadFontSize)))
                                .padding(.leading)
                                .padding(.trailing)
                        }.padding()
                }.zIndex(1)
                
                Image(view.image)
                    .resizable()
                    .scaledToFit()
            }
            .opacity(opacity)
            .animation(Animation.easeOut(duration: 1.25), value: opacity)
            .onAppear {
                DispatchQueue.main.async {
                    self.opacity += 1
                    
                    
                }
            }
            Spacer()
            
            NavigationLink(destination: subviews[view.firstChoicePageName]
                            .navigationBarBackButtonHidden(isSecondChoice() || isGameOver())) {
                
                Text(view.decision1)
                    .padding()
                    .alert("\(Constants.chapterMap[view.firstChoicePageName]?.chapterTitle ?? "decision1") Unlocked!", isPresented: self.$showingAlertDecision1) {
                        Text("Awesome!")
                    }
                
                
            }.simultaneousGesture(TapGesture().onEnded{
                let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
                impactHeavy.impactOccurred()
                userDecision = view.firstChoicePageName
                if Constants.chapters.contains(view.firstChoicePageName) {
                    let chapterOptional = UserDefaults.standard.array(forKey: DefaultsKeys.unlockedChapters)
                    
                    if let chapterOptional = chapterOptional {
                        var chapters = chapterOptional
                        chapters.append(view.firstChoicePageName)
                        defaults.set(chapters, forKey: DefaultsKeys.unlockedChapters)
                    }
                }
                
                // MARK: If it is a gameover, then reset user defaults. Otherwise save the current page.
                saveToUserDefaults(view.decision1, view.firstChoicePageName)
                
            })
                .onDisappear{
                    // Shows a chapter unlocked alert if their decision leads them to a new chapter.
                    if allChapters.contains(userDecision) == true && userDecision == view.firstChoicePageName {
                        print("Decision: \(userDecision)")
                        print("Page \(view.firstChoicePageName)")
                        constructAndStoreChapter(currentPageView: userDecision)
                        self.showingAlertDecision1 = true
                        
                    }
                }
            
                .padding()
            if(isSecondChoice()) {
                NavigationLink(destination: subviews[view.secondChoicePageName].navigationBarBackButtonHidden(true)) {
                    Text(view.decision2)
                        .alert("\(Constants.chapterMap[view.secondChoicePageName]?.chapterTitle ?? "") Unlocked!", isPresented: self.$showingAlertDecision2) {
                            Text("Nice!")
                        }
                        .padding()
                    
                }
                
                .simultaneousGesture(TapGesture().onEnded{
                    let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
                    impactHeavy.impactOccurred()
                    userDecision = view.secondChoicePageName
                    if Constants.chapters.contains(view.secondChoicePageName) {
                        let chapterOptional = UserDefaults.standard.array(forKey: DefaultsKeys.unlockedChapters)
                        
                        if let chapterOptional = chapterOptional {
                            var chapters = chapterOptional
                            chapters.append(view.secondChoicePageName)
                            defaults.set(chapters, forKey: DefaultsKeys.unlockedChapters)
                        }
                    }
                    
                    saveToUserDefaults(view.decision2, view.secondChoicePageName)
                    
                    
                })
                
                .onDisappear{
                    // Shows a chapter unlocked alert if their decision leads them to a new chapter.
                    
                    if allChapters.contains(userDecision) == true && userDecision == view.secondChoicePageName {
                        constructAndStoreChapter(currentPageView: userDecision)
                        self.showingAlertDecision2 = true
                        
                    }
                }
            }
            
            if(isThirdChoice()) {
                NavigationLink(destination: subviews[view.thirdChoicePageName].navigationBarBackButtonHidden(true)) {
                    Text(view.decision3)
                        .alert("\(Constants.chapterMap[view.thirdChoicePageName]?.chapterTitle ?? self.errorMsg) Unlocked!", isPresented: self.$showingAlertDecision3) {
                            Text("Great")
                        }
                        .padding()
                    
                }
                .simultaneousGesture(TapGesture().onEnded{
                    let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
                    impactHeavy.impactOccurred()
                    userDecision = view.thirdChoicePageName
                    if Constants.chapters.contains(view.thirdChoicePageName) {
                        let chapterOptional = UserDefaults.standard.array(forKey: DefaultsKeys.unlockedChapters)
                        
                        if let chapterOptional = chapterOptional {
                            var chapters = chapterOptional
                            chapters.append(view.thirdChoicePageName)
                            defaults.set(chapters, forKey: DefaultsKeys.unlockedChapters)
                        }
                    }
                    
                    saveToUserDefaults(view.decision3, view.thirdChoicePageName)
                    
                    
                })
                .onDisappear{
                    // Shows a chapter unlocked alert if their decision leads them to a new chapter.
                    if allChapters.contains(userDecision) == true && userDecision == view.thirdChoicePageName {
                        constructAndStoreChapter(currentPageView: userDecision)
                        self.showingAlertDecision3 = true
                        
                    }
                }
            }
        }
        
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

/// Resets the UserDefaults if the user picks a decision that leads to a game over.
/// If it is a gameover, then reset user defaults. Otherwise save the current page.
private func saveToUserDefaults(_ view: String, _ viewChoice: String) -> Void {
    if view == Constants.GameOverPhrase {
        UserDefaults.standard.set(Part_1_Intro.PageName, forKey: DefaultsKeys.currentPage)
    } else {
        UserDefaults.standard.set(viewChoice, forKey: DefaultsKeys.currentPage)
    }
}
