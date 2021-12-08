//
//  SecondContentView.swift
//  Math
//
//  Created by cmStudent on 2021/12/03.
//

import SwiftUI

struct SecondContentView: View {
    let inputText1: String
    let inputText2: String
    var body: some View {
        ZStack{
            HStack{
            Text("\(inputText1)")
            Text("\(inputText2)")
                
            }
            .navigationBarHidden(true)
            }
    }
}

struct SecondContentView_Previews: PreviewProvider {
    static var previews: some View {
        SecondContentView(inputText1: "", inputText2: "")
        
    }
}
