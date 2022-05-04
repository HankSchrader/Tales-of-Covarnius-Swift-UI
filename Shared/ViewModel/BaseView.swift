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
    let vnc = ViewNavigationController()
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
                GeometryReader { geo in
                    Image(view.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width, height: geo.size.height)
                        .opacity(opacity)
                        .animation(Animation.easeOut(duration: 1.25), value: opacity)
                        .onAppear {
                            DispatchQueue.main.async {
                                self.opacity += 1
                                
                                
                            }
                            
                        }
                }.zIndex(0).ignoresSafeArea()
                
                
                VStack {
                    Spacer()
                    NavigationLink(destination:
                                    self.vnc.routeDecision(choice: view.firstChoicePageName)
                                    .navigationBarBackButtonHidden(isSecondChoice() || isGameOver())) {
                        
                        Text(view.decision1)
                            .padding()
                            .font(.title)
                            .alert("\(Constants.chapterMap[view.firstChoicePageName]?.chapterTitle ?? "decision1") Unlocked!", isPresented: self.$showingAlertDecision1) {
                                Text("Awesome!")
                            }
                        
                        
                    }.simultaneousGesture(TapGesture().onEnded{
                        let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
                        impactHeavy.impactOccurred()
                        userDecision = view.firstChoicePageName
                        saveChapter(pageName: userDecision)
                        // MARK: If it is a gameover, then reset user defaults. Otherwise save the current page.
                        saveToUserDefaults(view.decision1, view.firstChoicePageName)
                        
                    })
                        .onDisappear{
                            // Shows a chapter unlocked alert if their decision leads them to a new chapter.
                            if allChapters.contains(userDecision) == true && userDecision == view.firstChoicePageName {
                                
                                constructAndStoreChapter(currentPageView: userDecision)
                                self.showingAlertDecision1 = true
                                
                            }
                        }.zIndex(1)
                    
                        .padding()
                    if(isSecondChoice()) {
                        
                        
                        NavigationLink(destination: self.vnc.routeDecision(choice: view.secondChoicePageName).navigationBarBackButtonHidden(true)) {
                            Text(view.decision2)
                                .alert("\(Constants.chapterMap[view.secondChoicePageName]?.chapterTitle ?? "") Unlocked!", isPresented: self.$showingAlertDecision2) {
                                    Text("Nice!")
                                }
                                .padding()
                                .font(.title)
                            
                            
                        }
                        
                        .simultaneousGesture(TapGesture().onEnded{
                            let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
                            impactHeavy.impactOccurred()
                            userDecision = view.secondChoicePageName
                            saveChapter(pageName: userDecision)
                            
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
                        NavigationLink(destination: self.vnc.routeDecision(choice: view.thirdChoicePageName).navigationBarBackButtonHidden(true)) {
                            Text(view.decision3)
                                .alert("\(Constants.chapterMap[view.thirdChoicePageName]?.chapterTitle ?? self.errorMsg) Unlocked!", isPresented: self.$showingAlertDecision3) {
                                    Text("Great")
                                }
                                .padding()
                                .font(.title)
                            
                            
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
                            impactHeavy.impactOccurred()
                            userDecision = view.thirdChoicePageName
                            saveChapter(pageName: userDecision)
                            
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
                }.zIndex(1)
                    .padding(.bottom)
            }
        }
        
    }
    
}

private func saveChapter(pageName: String) -> Void {
    let defaults = UserDefaults.standard
    if Constants.chapters.contains(pageName) {
        let chapterOptional = UserDefaults.standard.array(forKey: DefaultsKeys.unlockedChapters)
        
        if let chapterOptional = chapterOptional {
            var chapters = chapterOptional
            chapters.append(pageName)
            defaults.set(chapters, forKey: DefaultsKeys.unlockedChapters)
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
        let filteredChapts = removeMutuallyExclusiveChapters(currentPageView: currentPageView, currentUnlockedChapters: chapts)
        UserDefaults.standard.set(filteredChapts, forKey: DefaultsKeys.unlockedChapters)
        
    }
    
}

/// When a user is looking at their list of chapters, it should always have a linear progression. The user shouldn't be able to back track and then be able to
/// go down two different potential paths. That wouldn't make sense. So we check which paget the user is on, and which page should not be part of the story, and we remove it.
private func removeMutuallyExclusiveChapters(currentPageView: String, currentUnlockedChapters: [String] ) -> Any {
    var cuc = currentUnlockedChapters
    var index: Int?
    
    if(currentPageView == Part_1_Hapal_Down.PageName && currentUnlockedChapters.contains(Part_1_Save_The_Hapal.PageName)) {
        index = currentUnlockedChapters.firstIndex(of: Part_1_Save_The_Hapal.PageName)
        if let index = index {
            cuc.remove(at: index)
        } else {
            return ErrorViewMutualExclusion(currentPageView: currentPageView)
        }
        
    } else if(currentPageView == Part_1_Save_The_Hapal.PageName && currentUnlockedChapters.contains(Part_1_Hapal_Down.PageName)) {
        index = currentUnlockedChapters.firstIndex(of: Part_1_Hapal_Down.PageName)
        if let index = index {
            cuc.remove(at: index)
        } else {
            return ErrorViewMutualExclusion(currentPageView: currentPageView)
        }
        
        
    } else if(currentPageView == Part_1_Cowboys_Of_Katonia.PageName && currentUnlockedChapters.contains(Part_1_Greatest_Scientist.PageName)) {
        index = currentUnlockedChapters.firstIndex(of: Part_1_Greatest_Scientist.PageName)
        if let index = index {
            cuc.remove(at: index)
        } else {
            return ErrorViewMutualExclusion(currentPageView: currentPageView)
        }
    } else if(currentPageView == Part_1_Greatest_Scientist.PageName && currentUnlockedChapters.contains(Part_1_Cowboys_Of_Katonia.PageName)) {
        index = currentUnlockedChapters.firstIndex(of: Part_1_Cowboys_Of_Katonia.PageName)
        if let index = index {
            cuc.remove(at: index)
        } else {
            return ErrorViewMutualExclusion(currentPageView: currentPageView)
        }
    }
    else if(currentPageView == Part_1_Sneak.PageName && currentUnlockedChapters.contains(Part_2_Hypersleep.PageName)) {
        index = currentUnlockedChapters.firstIndex(of: Part_2_Hypersleep.PageName)
        if let index = index {
            cuc.remove(at: index)
        } else {
            return ErrorViewMutualExclusion(currentPageView: currentPageView)
        }
    }
    else if(currentPageView == Part_2_Hypersleep.PageName && currentUnlockedChapters.contains(Part_1_Sneak.PageName)) {
        index = currentUnlockedChapters.firstIndex(of: Part_1_Sneak.PageName)
        if let index = index {
            cuc.remove(at: index)
        } else {
            return ErrorViewMutualExclusion(currentPageView: currentPageView)
        }
    }
    else if(currentPageView == Part_1_Sneak.PageName && currentUnlockedChapters.contains(Part_2_Hypersleep.PageName)) {
        index = currentUnlockedChapters.firstIndex(of: Part_2_Hypersleep.PageName)
        if let index = index {
            cuc.remove(at: index)
        } else {
            return ErrorViewMutualExclusion(currentPageView: currentPageView)
        }
    }
    else if(currentPageView == Part_2_Hypersleep.PageName && currentUnlockedChapters.contains(Part_1_Sneak.PageName)) {
        index = currentUnlockedChapters.firstIndex(of: Part_1_Sneak.PageName)
        if let index = index {
            cuc.remove(at: index)
        } else {
            return ErrorViewMutualExclusion(currentPageView: currentPageView)
        }
    }
    
    
    return cuc
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
