//
//  ButtleView.swift
//  ichiichiMatch
//
//  Created by cmStudent on 2021/12/01.
//



import SwiftUI
import Foundation

struct ButtleView: View {
    
    @ObservedObject var buttleViewModel = ButtleViewModel()
    
    var body: some View {
        
        VStack {
            
            
            // MARK: 1Pの画面
            Group {
                ZStack{
                    VStack {
                        HStack {
                            Spacer()
                            
                            // 2
                            Button(action: {
                                buttleViewModel.btnTouch(hand: 2)
                            }) {
                                Image(buttleViewModel.hand2Image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: UIScreen.main.bounds.width/3)
                                    .border(buttleViewModel.isFrame2 ? Color.red : Color.clear, width: 5)
                                    .saturation(buttleViewModel.isBtn2 || buttleViewModel.is5Btn2 ? 0.0 : 1.0)
                            }
                            .disabled(buttleViewModel.isBtn2 || buttleViewModel.is5Btn2)
                            
                            Spacer()
                            
                            //1
                            Button(action: {
                                buttleViewModel.btnTouch(hand: 1)
                            }) {
                                Image(buttleViewModel.hand1Image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: UIScreen.main.bounds.width/3)
                                    .border(buttleViewModel.isFrame1 ? Color.red : Color.clear, width: 5)
                                    .saturation(buttleViewModel.isBtn1 || buttleViewModel.is5Btn1 ? 0.0 : 1.0)
                                    .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                            }
                            .disabled(buttleViewModel.isBtn1 || buttleViewModel.is5Btn1)
                            
                            Spacer()
                            
                        }
                        
                        Text(buttleViewModel.name1p)
                            .font(.largeTitle)
                    }
                    //ここにresult
                    if buttleViewModel.isWinLoss {
                        if buttleViewModel.is1pWin{
                            ResultWinView()
                        } else {
                            ResultLoseView()
                        }
                    }
                }
            }
            .rotationEffect(.degrees(180))
            
            // MARK: 中心のText
            Group {
                Spacer()
                
                Text(buttleViewModel.txt1p)
                    .font(.title)
                    .rotationEffect(.degrees(180))
                
                Text(buttleViewModel.txt2p)
                    .font(.title)
                
                Spacer()
            }
            
            
            // MARK: 2Pの画面
            Group {
                ZStack{
                    VStack {
                        HStack {
                            Spacer()
                            
                            // 3
                            Button(action: {
                                buttleViewModel.btnTouch(hand: 3)
                            }) {
                                Image(buttleViewModel.hand3Image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: UIScreen.main.bounds.width/3)
                                    .border(buttleViewModel.isFrame3 ? Color.red : Color.clear, width: 5)
                                    .saturation(buttleViewModel.isBtn3 || buttleViewModel.is5Btn3 ? 0.0 : 1.0)
                                
                            }
                            .disabled(buttleViewModel.isBtn3 || buttleViewModel.is5Btn3)
                            
                            Spacer()
                            
                            // 4
                            Button(action: {
                                buttleViewModel.btnTouch(hand: 4)
                            }) {
                                Image(buttleViewModel.hand4Image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: UIScreen.main.bounds.width/3)
                                    .border(buttleViewModel.isFrame4 ? Color.red : Color.clear, width: 5)
                                    .saturation(buttleViewModel.isBtn4 || buttleViewModel.is5Btn4 ? 0.0 : 1.0)
                                    .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                            }
                            .disabled(buttleViewModel.isBtn4 || buttleViewModel.is5Btn4)
                            
                            Spacer()
                        }
                        
                        Text(buttleViewModel.name2p)
                            .font(.largeTitle)
                    }
                    //ここにresult
                    if buttleViewModel.isWinLoss {
                        if buttleViewModel.is2pWin{
                            ResultWinView()
                        } else {
                            ResultLoseView()
                        }
                    }
                }
                
                
            }
            .onAppear() {
                buttleViewModel.turnChange(turn: buttleViewModel.isTurn)
            }
            
        }
    }
}


struct ResultWinView: View {
//    @ObservedObject var buttleViewModel = ButtleViewModel()

//    @State var isPresented = false
    var body: some View {
        
        VStack{
        
//            Button(action: {
//                self.isPresented.toggle()
//            }, label: {
//                Text("button")
//                    .font(.title)
//            })
            
       Image("win")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .opacity(true ? 1 : 0)
            .scaleEffect(true ? 1 : 0)
            .animation(.spring(response: 0.2, dampingFraction: 0.6, blendDuration: 0))
        }
    }
}

struct ResultLoseView: View {
//    @ObservedObject var buttleViewModel = ButtleViewModel()
    var body: some View {
        
        VStack{
        
//            Button(action: {
//                self.isPresented.toggle()
//            }, label: {
//                Text("button")
//                    .font(.title)
//            })
            
       Image("lose")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .opacity(true ? 1 : 0)
            .scaleEffect(true ? 1 : 0)
            .animation(.spring(response: 0.2, dampingFraction: 0.6, blendDuration: 0))
        }
    }
}



struct ButtleView_Previews: PreviewProvider {
    static var previews: some View {
        ButtleView()
    }
}
