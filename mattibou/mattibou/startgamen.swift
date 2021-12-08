//
//  startgamen.swift
//  mattibou
//
//  Created by 西澤 耕平 on 2021/12/03.
//

import SwiftUI

struct startgamen: View {
    var body: some View {
        
        NavigationView {
            NavigationLink(destination:formName()){
                ZStack{
                    Image("haikei")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    
                        VStack{
                            
                            
                            Spacer()
                                .frame(height: 190)
                            
                            Image("machetitle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding()
                                
                            Text("画面をタップ！")
                                .font(.body)
                            
                            Spacer()
                            
                        }
                        
                }//---------------------ZStack
//                .navigationTitle("戻る")
            }
        }
        
//        ZStack{
//
//
//            Image("haikei")
//
//            Button(action: {
//
//
//
//
//            }) {
//
//                VStack{
//
//
//                    Spacer()
//                        .frame(height: 190)
//
//                    Image("machetitle")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .padding()
//
//                    Text("画面をタップ！")
//                        .font(.body)
//
//                    Spacer()
//
//
//                }
//
//
//
//
//                }
//
//        }//---------------------ZStack
        
    }
}

struct startgamen_Previews: PreviewProvider {
    static var previews: some View {
        startgamen()
    }
}
