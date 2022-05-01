

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
        print("Current configuration: \(BuildConfiguration.shared.environment)")
        return ZStack {

            Image("TitleView")
                .resizable()
                .scaledToFill()
                .offset(x: -55, y: -0)
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                Text("Tales").textCase(.uppercase)
                    .font(.largeTitle)
                    .padding(.bottom)
                    .opacity(opacity1)
                    .animation(Animation.easeOut(duration: 1.5).delay(0.6), value: opacity1)
                    .onAppear {
                        DispatchQueue.main.async {
                            
                            
                            self.opacity1 += 1
                            show = true
                            
                        }
                    }                    .foregroundColor(.white)
                Text("Of")
                    .font(.title).textCase(.uppercase)
                    .padding(.bottom)
                    .opacity(opacity2)
                    .animation(Animation.easeOut(duration: 1.5).delay(1.6), value: opacity2)
                    .onAppear {
                        DispatchQueue.main.async {
                            
                            
                            self.opacity2 += 1
                            show = true
                        }
                    }
                    .foregroundColor(.white)
                Text("Covarnius").textCase(.uppercase)
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
                    .foregroundColor(.white)
                Spacer()
                 
                VStack {
              
                    NavigationLink(destination: ContentView()
                                  
                                    .navigationBarBackButtonHidden(true)) {
                        Text(self.isStartOfAdventure() ? "Start the Adventure!" : "Continue the Adventure!")
                            .font(.title)
                            .opacity(shimmer)
                            .foregroundColor(self.isStartOfAdventure() ? .orange : .green)
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
                        
                            .foregroundColor(Color.orange)
                        
                        
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
                    .foregroundColor(.orange)
                    .simultaneousGesture(TapGesture().onEnded{
                        let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
                        impactHeavy.impactOccurred()
                    })
                    
                }  .offset(x: 0, y: -220)
            }
            
            .onAppear {
                SoundsController.playSounds(soundfile: "MainMenuSong.wav")
            }
            .onDisappear {
                SoundsController.stopAudio()
            }.zIndex(1)
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

