//
//  wowView.swift
//  PLEASE WatchKit Extension
//
//  Created by MacBook on 3/8/20.
//  Copyright © 2020 Figments.tech. All rights reserved.
//

import SwiftUI


extension View {
    func stacked(at position: Int, in total: Int) -> some View {
        let offset = CGFloat(total - position)
        return self.offset(CGSize(width: 0, height: offset * 2))
    }
}



//sessions are an hour
struct sessionView: View {
    
    @ObservedObject var model: ScreenModel
    
    //MAKE TOGGLE BASED ON LIVE SESSION INITATION
    @State private var inLiveSession = false
    @State public var coworkerCount = 0
    @State public var familyFriendCount = 0
    @State public var phoneWebSocialCount = 0
    @State public var randomWorkAssignment = 0
    @State public var meetingCount = 0
    @State public var headSpaceCount = 0
    @State private var locationSelection = 0
    @State private var durationSelection = 1
    @State public var distractionCount = 0
    @State var timeRemaining = 3200
    @State public var timesDistracted = [0]
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

       var body: some View {
        
        
            ZStack {
                
    
                VStack {
                    
                
                    
                    if inLiveSession {
                        VStack {
                            Text("In Live Session")
                                .foregroundColor(Color.green)
                                .padding(.bottom, 5.0)
                            HStack {
                                if coworkerCount != 0 {
                                    sessionImageBarCoworker()
                                }
                                if familyFriendCount != 0 {
                                    familyfriendsBar()
                                }
                                if phoneWebSocialCount != 0 {
                                    phoneImageBar()
                                }
                                if randomWorkAssignment != 0 {
                                    abruptTaskBar()
                                }
                                if meetingCount != 0 {
                                    meetingBar()
                                }
                                if headSpaceCount != 0 {
                                    headspaeBar()
                                }
                            }
                            Text("Distractions: \(distractionCount)")
                            Text("Time Left: \((timeRemaining * durationSelection))")
                                .onReceive(timer) { _ in
                                    if self.timeRemaining > 0 {
                                        self.timeRemaining -= 1
                                        
                                        
                                    if self.timeRemaining < 1 {
                                        let defaults = UserDefaults.standard
                                        defaults.set(self.timesDistracted, forKey: "lastSavedSession")
                                        
                                        //for RETRIEVE defaults.stringArray(forKey: "SavedStringArray") ?? [String]()
                                    }
                                    }
                            }
                        }
                    }
                    
                    
                    if !inLiveSession {
                        VStack {
                            HStack {
                                Picker(selection: $durationSelection, label: Text("Duration/hrs")) {
                                    Text("1").tag(1)
                                    /*@START_MENU_TOKEN@*/Text("2").tag(2)/*@END_MENU_TOKEN@*/
                                    Text("3").tag(3)
                                }
                                .frame(width: 80, height: 40)
                                Picker(selection: $locationSelection, label: Text("Location")) {
                                    Text("Office").tag(1)
                                    Text("School").tag(2)
                                    Text("Home").tag(3)
                                } .frame(width: 80, height: 40)
                                    .padding(.vertical)
                            }

                            Button(action: {
                                self.inLiveSession.toggle()
                            }) {
                                Text("Start session")
                                    .foregroundColor(Color.green)
                            }
                            .frame(width: 125)
                            
                        
                        }
                    }
             List {
                              Button(action: {
                                self.coworkerCount += 1
                                self.distractionCount += 1
                                self.timesDistracted.append(1)
                                self.timesDistracted.append(Int(self.timeRemaining))
                                print(self.timesDistracted)
                              } ) {
                                HStack {
                                    Text("Co-worker")
                                    Spacer()
                                    Text(String(self.coworkerCount))
                                }
                                
                              }
                .listRowPlatterColor(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                

                              Button(action: {
                                self.familyFriendCount += 1
                                self.distractionCount += 1
                                self.timesDistracted.append(1)
                                self.timesDistracted.append(Int(self.timeRemaining))
                              }) {
                                HStack {
                                    Text("Family/Friend")
                                    Spacer()
                                    Text(String(self.familyFriendCount))
                                }
                              }
                .listRowPlatterColor(Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)))
                              Button(action: {
                                self.phoneWebSocialCount += 1
                                self.distractionCount += 1
                                self.timesDistracted.append(2)
                                self.timesDistracted.append(Int(self.timeRemaining))
                                print(self.timesDistracted)
                              }) {
                                HStack {
                                    Text("Phone/Text/Call")
                                    Spacer()
                                    Text(String(phoneWebSocialCount))
                                }
                              }
                .listRowPlatterColor(Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)))
                              Button(action: {
                                self.randomWorkAssignment += 1
                                self.distractionCount += 1
                                self.timesDistracted.append(3)
                                self.timesDistracted.append(Int(self.timeRemaining))
                              }) {
                                HStack {
                                    Text("Unplanned priority task")
                                    Spacer()
                                    Text(String(randomWorkAssignment))
                                }
                              }
                .listRowPlatterColor(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
                              Button(action: {
                                self.meetingCount += 1
                                self.distractionCount += 1
                                self.timesDistracted.append(4)
                                self.timesDistracted.append(Int(self.timeRemaining))
                              }) {
                                HStack {
                                    Text("Misc")
                                    Spacer()
                                    Text(String(meetingCount))
                                }
                              }
                .listRowPlatterColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                              
                              Button(action: {
                                self.headSpaceCount += 1
                                self.distractionCount += 1
                                self.timesDistracted.append(5)
                                self.timesDistracted.append(Int(self.timeRemaining))
                              }) {
                                HStack {
                                    Text("headspace")
                                    Spacer()
                                    Text(String(headSpaceCount))
                                }
                              }
                .listRowPlatterColor(Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)))

                          } .listStyle(CarouselListStyle())
                              .navigationBarTitle(Text("Log Distraction")) 
                
                }
                

            }
        
        }
    
    }



struct wowView_Previews: PreviewProvider {
    static var previews: some View {
        sessionView(model: ScreenModel())
    }
}


