

//
//  TitleView.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/18/21.
//

import SwiftUI
import AVKit

struct TitleView: View {
    @State private var opacity1 = 0.0
    @State private var opacity2 = 0.0
    @State private var opacity3 = 0.0
    @State private var show = false
    @State private var audioPlayer: AVAudioPlayer!
    @State private var showDeleteAlert = false
    
    var defaults = UserDefaults.standard
    private struct Constants {
        static let duration: Double = 0.9
        static let minOpacity: Double = 0.25
        static let maxOpacity: Double = 1.0
    }
    
    @State private var shimmer: Double = Constants.minOpacity
    var body: some View {
        VStack {
            Text("Tales")
                .font(.largeTitle)
                .padding(.bottom)
                .opacity(opacity1)
                .animation(Animation.easeOut(duration: 1.5).delay(0.6), value: opacity1)
                .onAppear {
                    DispatchQueue.main.async {
                        
                        
                        self.opacity1 += 1
                        show = true
                        
                    }
                }
            Text("Of")
                .font(.title)
                .padding(.bottom)
                .opacity(opacity2)
                .animation(Animation.easeOut(duration: 1.5).delay(1.6), value: opacity2)
                .onAppear {
                    DispatchQueue.main.async {
                        
                        
                        self.opacity2 += 1
                        show = true
                    }
                }
            Text("Covarnius")
                .font(.largeTitle)
                .padding(.bottom)
                .opacity(opacity3)
                .animation(Animation.easeOut(duration: 1.5).delay(2.6), value: opacity3)
                .onAppear {
                    DispatchQueue.main.async {
                        self.opacity3 += 1
                        show = true
                        
                    }
                }
            Spacer()
            VStack {
                NavigationLink(destination: ContentView()
                                .navigationBarBackButtonHidden(true)) {
                    Text(self.isStartOfAdventure() ? "Start the Adventure!" : "Continue the Adventure!")
                        .font(.title)
                        .opacity(shimmer)
                        .foregroundColor(self.isStartOfAdventure() ? .cyan : .green)
                        .animation(Animation.easeOut(duration: 0.25).delay(0.5)
                                    .repeatForever(), value: shimmer)
                        .onAppear {
                            DispatchQueue.main.async {
                                shimmer += 1
                            }
                        }
                    
                }.padding()
                    .simultaneousGesture(TapGesture().onEnded{
                        let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
                        impactHeavy.impactOccurred()
                    })
          
                Button(action: {
                    print("Delete Data.")
                }) {
                    Text("Credits")
                    
                        .foregroundColor(.blue)
                    
                    
                }
                .padding()
                .simultaneousGesture(TapGesture().onEnded{
                    let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
                    impactHeavy.impactOccurred()
                })
             
                Button("Delete Progress") {
                    showDeleteAlert = true
                }
                .alert(isPresented: $showDeleteAlert) {
                    Alert(
                        title: Text("Are you sure you want to delete your progress?"),
                        message: Text("There is no undo, what would Chrono think?"),
                        primaryButton: .destructive(Text("Delete")) {
                            UserDefaults.standard.set(Part_1_Intro.PageName, forKey: DefaultsKeys.currentPage)
                            UserDefaults.standard.removeObject(forKey: DefaultsKeys.unlockedChapters)
                        },
                        secondaryButton: .cancel()
                        
                    )
                }
         
                .padding()
                .simultaneousGesture(TapGesture().onEnded{
                    let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
                    impactHeavy.impactOccurred()
                })
             
            }  .offset(x: 0, y: -220)
        }
        
        .onAppear {
            Sounds.playSounds(soundfile: "MainMenuSong.wav")
        }
        .onDisappear {
            Sounds.stopAudio()
        }
        .contentShape(Rectangle())
        
    }
    
    func isStartOfAdventure() -> Bool {
        
        let currentPage: String = UserDefaults.standard.string(forKey: DefaultsKeys.currentPage) ?? ""
        return currentPage == Part_1_Intro.PageName || currentPage == ""
    }
    
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}



