//
//  ResultView.swift
//  Match
//
//  Created by cmStudent on 2021/12/07.
//

//勝敗判定のView
//試作段階。これからButtleと繋げる

import SwiftUI
import Foundation

struct ResultView: View {
    @State var isPresented = false
    var body: some View {
        
        VStack{
        
            Button(action: {
                self.isPresented.toggle()
            }, label: {
                Text("button")
                    .font(.title)
            })
            
       Image("win")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .opacity($isPresented.wrappedValue ? 1 : 0)
            .scaleEffect($isPresented.wrappedValue ? 1 : 0)
            .animation(.spring(response: 0.2, dampingFraction: 0.6, blendDuration: 0))
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}

