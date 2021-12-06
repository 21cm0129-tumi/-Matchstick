//
//  ContentView.swift
//  Math
//
//  Created by cmStudent on 2021/12/01.
//

import SwiftUI

struct ContentView: View {
    
    @State var dispSearchKey1:String = ""
    @State var dispSearchKey2:String = ""
    @AppStorage("k") var inputText1 = ""
    @AppStorage("l") var inputText2 = ""
    var body: some View {
        ZStack{
            
            NavigationView {
                
                VStack{
                    
                    Text("1P")
                        .frame(width: 50, height: 50)
                        .foregroundColor(.pink)
                        .font(.largeTitle)
                    TextField("name",
                              text: $inputText1 , onCommit: {
                                
                                dispSearchKey1 = inputText1
                                //検索キーワードをデバックエリアに出力する
                                print("入力した名前：" + dispSearchKey1)
                                
                              })
                        
                        //余白追加
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                        
                        .padding()
                    
                    
                    Text("2P")
                        .frame(width: 50, height: 50)
                        .foregroundColor(.blue)
                        .font(.largeTitle)
                    TextField("name",
                              text: $inputText2 , onCommit: {
                                dispSearchKey2 = inputText2
                                
                                
                                //検索キーワードをデバックエリアに出力する
                                print("入力した名前：" + dispSearchKey2)
                                
                                
                              })
                        
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                        .padding()
                        .navigationTitle("")
                    
                    
               
                    Spacer()
                    HStack{
                        Spacer()
                        NavigationLink(
                            destination: SecondContentView()){
                           
                               
                            
                       
                            }
                        
                    }
                    
           
                    .navigationTitle("")
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
